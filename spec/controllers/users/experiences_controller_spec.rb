# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::ExperiencesController, type: :controller do
  let(:user) { create(:user) }
  let(:experience) { create(:experience) }

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

  describe 'GET #new' do
    it 'renders the template with status' do
      get :new
      expect(response).to render_template(:new)
      expect(response.status).to eq(200)
    end
  end

  describe 'POST #create' do
    context 'with correct parameters' do
      it 'the number of experiences should increase' do
        experiences = Experience.count
        post :create, params: { experience: build(:experience).attributes }
        expect(Experience.count).to eq(experiences + 1)
      end
    end
  end

  describe 'GET #edit' do
    it 'renders the template with status' do
      get :edit, params: { id: experience }
      expect(response).to render_template(:edit)
      expect(response.status).to eq(200)
    end
  end

  describe 'PUT #update' do
    it 'value should be changed' do
      title = 'new title for experience'
      post :update, params: { id: experience, experience: build(:experience, title: title).attributes }
      expect(Experience.last).to have_attributes(title: title)
      expect(response).to redirect_to(users_experiences_path)
    end
  end

  describe 'GET #destroy' do
    it 'the number of experiences should decrease' do
      experience.save
      experiences = Experience.count
      get :destroy, params: { id: experience }
      expect(experiences - 1).to eq(Experience.count)
      expect(response).to redirect_to(users_experiences_path)
    end
  end
end
