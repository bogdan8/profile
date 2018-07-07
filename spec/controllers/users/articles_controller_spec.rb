require 'rails_helper'

RSpec.describe Users::ArticlesController, type: :controller do
  let(:user) { create(:user) }
  let(:article) { create(:article) }

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
      get :show, params: { id: article.id }
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
        title = 'new title for article'
        post :update, params: { id: article, article: build(:article, title: title).attributes }
        expect(Article.last).to have_attributes(title: title)
        expect(response).to redirect_to(users_article_path(article))
      end
    end
    
    context 'with incorrect parameters' do
      it 'should renders the edit template' do
        post :update, params: { id: article.id, article: build(:article, title: '').attributes }
        expect(Article.last).not_to have_attributes(title: '')
        expect(response).to render_template(:edit)
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET #destroy' do
    it 'the number of articles should decrease' do
      article.save
      articles = Article.count
      get :destroy, params: { id: article }
      expect(articles - 1).to eq(Article.count)
      expect(response).to redirect_to(users_articles_path)
    end
  end
end




