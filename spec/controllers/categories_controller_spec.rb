require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:user) { create(:user) }
  let(:category) { create(:category) }

  before(:each) do
    sign_in user
  end

  describe 'GET #show' do
    it 'renders the template with status' do
      get :show, params: { id: category.slug }
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
