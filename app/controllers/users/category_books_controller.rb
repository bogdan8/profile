# frozen_string_literal: true

module Users
  class CategoryBooksController < BaseController
    before_action :set_category_book, only: %i[show edit update destroy]
    before_action :set_category_books, only: %i[index show]
    before_action :authenticate_user!

    def index; end

    def show; end

    def new
      @category_book = CategoryBook.new
    end

    def edit; end

    def create
      @category_book = CategoryBook.new(category_book_params)
      if @category_book.save
        redirect_to %i[users category_books], notice: 'Category was successfully created'
      else
        render :new
      end
    end

    def update
      if @category_book.update(category_book_params)
        redirect_to %i[users category_books], notice: 'Category was successfully updated'
      else
        render :edit
      end
    end

    def destroy
      @category_book.destroy
      redirect_to %i[users category_books], notice: 'Category was successfully destroyed'
    end

    def sort
      params[:category_book].each_with_index do |id, index|
        CategoryBook.where(id: id).update_all(position: index + 1)
      end
      redirect_to %i[users category_books]
    end

    private

    def set_category_book
      @category_book = CategoryBook.find(params[:id])
    end

    def set_category_books
      @category_books = CategoryBook.all
    end

    def category_book_params
      params.require(:category_book).permit \
        :title
    end
  end
end
