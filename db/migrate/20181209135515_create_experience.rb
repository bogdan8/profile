class CreateExperience < ActiveRecord::Migration[5.1]
  def change
    create_table :experiences do |t|
      t.string :name
      t.string :color
      t.integer :position, default: 0
    end
  end
end
