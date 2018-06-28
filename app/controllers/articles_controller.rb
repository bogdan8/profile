class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show]

  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @categories = Category.all
  end

  private
  
  def set_article
    @article = Article.find(params[:id])
  end
end
