class RenameColumnLinkText < ActiveRecord::Migration[5.1]
  def change
    rename_column :articles, :link_text, :posted_at
  end
end
