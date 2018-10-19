# frozen_string_literal: true

module Users
  class StatisticsController < BaseController
    before_action :authenticate_user!

    def index
      @statistics = Statistic.all
    end
  end
end
