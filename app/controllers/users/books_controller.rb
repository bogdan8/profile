# frozen_string_literal: true

module Users
  class BooksController < BaseController
    before_action :set_book, only: %i[edit update destroy]
    before_action :authenticate_user!

    def index
      @books = Book.all
    end

    def new
      @book = Book.new
    end

    def edit; end

    def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to %i[users books], notice: 'Book was successfully created'
      else
        render :new
      end
    end

    def update
      if @book.update(book_params)
        redirect_to %i[users books], notice: 'Book was successfully updated'
      else
        render :edit
      end
    end

    def destroy
      @book.destroy
      redirect_to %i[users books], notice: 'Book was successfully destroyed'
    end

    def sort
      params[:book].each_with_index do |id, index|
        Book.where(id: id).update_all(position: index + 1)
      end
      redirect_to %i[users books]
    end

    private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit \
        :image, :alt, :src
    end
  end
end
