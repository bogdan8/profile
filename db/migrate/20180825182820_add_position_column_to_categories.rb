class AddPositionColumnToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :position, :integer, default: 0
  end
end
