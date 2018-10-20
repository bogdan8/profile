class AddTimestampsToStatistic < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :statistics, null: false
  end
end
