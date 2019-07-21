class RenameColumnForExperience < ActiveRecord::Migration[5.1]
  def change
    rename_column :experiences, :name, :title
  end
end
