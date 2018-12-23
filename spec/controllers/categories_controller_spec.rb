# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { create(:category) }

  describe 'GET #show' do
    it 'renders the template with status' do
      get :show, params: { id: category.slug }
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
