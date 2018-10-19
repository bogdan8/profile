# frozen_string_literal: true

class MainController < ApplicationController
  respond_to :json
  before_action :save_statistic, only: %(about)

  def search
    @articles = Article.where('title LIKE ?', "%#{params[:q]}%").limit(5)
    respond_with @articles
  end

  def about
    @images = Attachment.images.sort! { |a, b| a.position <=> b.position }
    @videos = Attachment.videos
    @books = Book.all
  end

  def contact; end

  private

  def save_statistic
    Statistic.create(ip_address: request.env['REMOTE_ADDR'], browser: request.env['HTTP_USER_AGENT'])
  end
end
