# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::StatisticsController, type: :controller do
  let(:user) { create(:user) }
  let(:statistic) { create(:statistic) }

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

  describe 'GET #destroy' do
    it 'the number of statistics should decrease' do
      statistic.save
      get :destroy, params: { id: statistic }
      expect(Statistic.count).to eq(0)
      expect(response).to redirect_to(users_statistics_path)
    end
  end
end
