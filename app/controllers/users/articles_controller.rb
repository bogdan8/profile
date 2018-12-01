# frozen_string_literal: true

module Users
  class ArticlesController < BaseController
    before_action :set_article, only: %i[show edit update destroy]
    before_action :set_categories, only: %i[index show new edit]
    before_action :authenticate_user!

    def index
      @articles = Article.order(updated_at: :desc).page(params[:page]).per(5)
    end

    def show; end

    def new
      @article = Article.new
    end

    def edit; end

    def create
      @article = Article.new(article_params)
      add_categories_to_article
      if @article.save
        redirect_to [:users, @article], notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def update
      Categorization.where(article_id: @article.id).delete_all
      add_categories_to_article
      if @article.update(article_params)
        redirect_to [:users, @article], notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to users_articles_url, notice: 'Article was successfully destroyed.'
    end

    private

    def set_article
      @article = Article.friendly.find(params[:id]).decorate
    end

    def set_categories
      @categories = Category.order(:position)
    end

    def article_params
      params.require(:article).permit(:title, :slug, :short_description, :long_description, :author, :link, :posted_at)
    end

    def add_categories_to_article
      return if params[:article][:category_ids].nil?
      params[:article][:category_ids].each do |category|
        @article.categorizations.build(category_id: category) unless category.empty?
      end
    end
  end
end
