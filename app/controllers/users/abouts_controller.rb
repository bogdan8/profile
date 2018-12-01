# frozen_string_literal: true

module Users
  class AboutsController < BaseController
    before_action :set_about, only: %i[index new edit update]
    before_action :authenticate_user!

    def index; end

    def new; end

    def edit; end

    def update
      if @about.update(about_params)
        render :edit, notice: 'About was successfully updated.'
      else
        render :edit
      end
    end

    private

    def set_about
      @about = About.first_or_create
    end

    def about_params
      params.require(:about).permit(:phone, :job_link, :linkedin_link, :facebook_link, :github_link, :bitbucket_link, :statistic_link, :photo)
    end
  end
end
