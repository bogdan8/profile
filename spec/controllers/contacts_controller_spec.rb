# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  let(:contact) { create(:contact) }

  describe 'GET #show' do
    it 'renders the template with status' do
      get :show, params: { id: contact }
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end
end
