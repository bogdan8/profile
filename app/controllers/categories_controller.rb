# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]
  before_action :set_categories, only: %i[show]

  def show; end

  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end
end
