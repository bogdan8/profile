class CreateStatistic < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.string :ip_address
      t.string :browser
    end
  end
end
