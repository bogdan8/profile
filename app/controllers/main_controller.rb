class MainController < ApplicationController
  respond_to :json
  def index; end

  def search
    @articles = Article.where('title LIKE ?', "%#{params[:q]}%").limit(5)
    respond_with @articles
  end
end
