# frozen_string_literal: true

class MainController < ApplicationController
  respond_to :json

  def search
    @articles = Article.where('title LIKE ?', "%#{params[:q]}%").limit(5)
    respond_with @articles
  end

  def about
    @images = Attachment.images.sort! { |a, b| a.position <=> b.position }
    @videos = Attachment.videos
  end

  def contact; end
end
