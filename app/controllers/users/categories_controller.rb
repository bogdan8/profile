module Users
  class CategoriesController < BaseController
    before_action :set_category, only: %i[show edit update destroy]
    before_action :set_categories, only: %i[index show]
    before_action :authenticate_user!

    def index; end

    def show; end

    def new
      @category = Category.new
    end

    def edit; end

    def create
      @category = Category.new(category_params)

      if @category.save
        redirect_to [:users, @category], notice: 'Category was successfully created.'
      else
        render :new
      end
    end

    def update
      if @category.update(category_params)
        redirect_to [:users, @category], notice: 'Category was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @category.destroy
      redirect_to users_categories_url, notice: 'Category was successfully destroyed.'
    end

    private

    def set_category
      @category = Category.friendly.find(params[:id])
    end

    def set_categories
      @categories = Category.all
    end

    def category_params
      params.require(:category).permit(:title, :slug)
    end
  end
end
