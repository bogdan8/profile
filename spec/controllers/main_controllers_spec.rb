require 'rails_helper'

RSpec.describe MainController, type: :controller do
  let(:user) { create(:user) }
  let(:article) { create(:article) }

  describe 'GET #index' do
    it 'renders the template with status' do
      get :index
      expect(response).to render_template(:index)
      expect(response.status).to eq(200)
    end
  end
end
