# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show]
  before_action :set_categories, only: %i[index show]

  def index
    @articles = Article.page(params[:page]).per(5)
  end

  def show; end

  private

  def set_article
    @article = Article.friendly.find(params[:id]).decorate
  end

  def set_categories
    @categories = Category.order(:position)
  end
end
