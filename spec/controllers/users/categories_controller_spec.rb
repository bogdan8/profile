require 'rails_helper'

RSpec.describe Users::CategoriesController, type: :controller do
  let(:user) { create(:user) }
  let(:category) { create(:category) }

  before(:each) do
    sign_in user
  end

  describe 'GET #index' do
    it 'renders the template with status' do
      get :index
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #show' do
    it 'renderes the template with status' do
      get :show, params: { id: category }
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #new' do
    it 'render the template with status' do
      get :new
      expect(response).to render_template(:new)
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #update' do
    context 'with correct parameters' do
      it 'value should be changed' do
        title = 'new title for category'
        post :update, params: { id: category, category: build(:category, title: title).attributes }
        expect(Category.last).to have_attributes(title: title)
        expect(response).to redirect_to(users_category_path(category))
      end
    end
    
    context 'with incorrect parameters' do
      it 'should renders the edit template' do
        post :update, params: { id: category.id, category: build(:category, title: '').attributes }
        expect(Category.last).not_to have_attributes(title: '')
        expect(response).to render_template(:edit)
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET #destroy' do
    it 'the number of categories should decrease' do
      category.save
      categories = Category.count
      get :destroy, params: { id: category }
      expect(categories - 1).to eq(Category.count)
      expect(response).to redirect_to(users_categories_path)
    end
  end
end
