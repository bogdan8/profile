# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::AttachmentsController, type: :controller do
  let(:user) { create(:user) }
  let(:attachment) { create(:attachment) }

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
    it 'renders the template with status' do
      get :show, params: { id: attachment.id }
      expect(response).to render_template(:show)
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #new' do
    it 'renders the template with status' do
      get :new
      expect(response).to render_template(:new)
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    context 'with correct parameters' do
      it 'the number of attachments should increse' do
        attachments = Attachment.count
        post :create, params: { attachment: build(:attachment).attributes }
        expect(Attachment.count).to eq(attachments + 1)
      end
    end
  end

  describe 'POST #update' do
    context 'with correct parameters' do
      it 'valud should be changed' do
        small = '5'
        post :update, params: { id: attachment, attachment: build(:attachment, small: small).attributes}
        expect(Attachment.last).to have_attributes(small: small)
        expect(response).to redirect_to(users_attachment_path(attachment))
      end
    end
  end

  describe 'GET #destroy' do
    it 'the number of attachments should decrease' do
      attachment.save
      attachments = Attachment.count
      get :destroy, params: { id: attachment }
      expect(attachments - 1).to eq(Attachment.count)
      expect(response).to redirect_to(users_attachments_path)
    end
  end
end
  
