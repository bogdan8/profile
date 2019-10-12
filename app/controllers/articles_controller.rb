# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.order(updated_at: :desc).page(params[:page]).per(5)
  end

  def show
    @article = Article.friendly.find(params[:id]).decorate
  end

  private

  helper_method def categories
    @categories ||= Category.order(:position)
  end
end
