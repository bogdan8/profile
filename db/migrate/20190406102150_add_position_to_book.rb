class AddPositionToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :position, :integer, default: 0
  end
end
