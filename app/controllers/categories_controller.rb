# frozen_string_literal: true

class CategoriesController < ApplicationController
  def show; end

  private

  helper_method def current_category
    @current_category ||= Category.friendly.find(params[:id])
  end

  helper_method def categories
    @categories ||= Category.order(:position)
  end
end
