class AddColumnsGridsToAttachment < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :small, :string, default: ''
    add_column :attachments, :medium, :string, default: ''
    add_column :attachments, :large, :string, default: ''
    add_column :attachments, :extra_large, :string, default: ''
  end
end
