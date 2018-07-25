# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MainController, type: :controller do
  describe 'GET #about' do
    it 'renders the template with status' do
      get :about
      expect(response).to render_template(:about)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #contact' do
    it 'renders the template with status' do
      get :contact
      expect(response).to render_template(:contact)
      expect(response.status).to eq(200)
    end
  end
end
