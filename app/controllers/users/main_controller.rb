module Users
  class MainController < BaseController
    respond_to :json

    def search
      @articles = Article.where('title LIKE ? ', "%#{params[:q]}%").limit(5)
      respond_with @articles
    end
  end
end
