# frozen_string_literal: true

module Users
  class StatisticsController < BaseController
    before_action :authenticate_user!

    def index
      @statistics = Statistic.all
    end

    def destroy
      Statistic.destroy_all
      redirect_to users_statistics_path
    end
  end
end
