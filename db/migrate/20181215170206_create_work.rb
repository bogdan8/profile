class CreateWork < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :date
      t.string :color
      t.references :experience, foreign_key: true
    end
  end
end
