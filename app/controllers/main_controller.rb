# frozen_string_literal: true

class MainController < ApplicationController
  respond_to :json

  def search
    @articles = Article.where('title LIKE ?', "%#{params[:q]}%").limit(5)
    respond_with @articles
  end

  def about
    @experiences = Experience.includes(:works).all
    @contact = Contact.first_or_create
    @images = Attachment.images.sort! { |a, b| a.position <=> b.position }
    @books = Book.all
    @category_books = CategoryBook.includes(:books).all
  end
end
