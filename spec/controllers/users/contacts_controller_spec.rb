# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::ContactsController, type: :controller do
  let(:user) { create(:user) }
  let(:contact) { create(:contact) }

  before(:each) do
    sign_in user
  end

  describe 'GET #edit' do
    it 'renders the template with status' do
      get :edit, params: { id: contact }
      expect(response).to render_template(:edit)
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #update' do
    it 'should renders the edit template' do
      post :update, params: { id: contact, contact: build(:contact, name: 'new name').attributes }
      expect(Contact.last).to have_attributes(name: 'new name')
      expect(response.status).to eq(200)
    end
  end
end
