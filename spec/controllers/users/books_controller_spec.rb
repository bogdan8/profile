# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Users::BooksController, type: :controller do
  let(:user) { create(:user) }
  let(:book) { create(:book) }

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
      it 'the number of books should increase' do
        books = Book.count
        post :create, params: { book: build(:book).attributes }
        expect(Book.count).to eq(books + 1)
      end
    end
  end

  describe 'POST #update' do
    it 'should renders the edit template' do
      post :update, params: { id: book, book: build(:book, alt: 'image text updated').attributes }
      expect(Book.last).to have_attributes(alt: 'image text updated')
      expect(response).to redirect_to(%i[users books])
    end
  end

  describe 'GET #destroy' do
    it 'the number of books should decrease' do
      book.save
      books = Book.count
      get :destroy, params: { id: book }
      expect(books - 1).to eq(Book.count)
      expect(response).to redirect_to(%i[users books])
    end
  end
end
