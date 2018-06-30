class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show]
  before_action :set_categories, only: %i[index show]

  def index
    @articles = Article.all
  end

  def show; end

  private
  
  def set_article
    @article = Article.find(params[:id]).decorate
  end

  def set_categories
    @categories = Category.all
  end
end
