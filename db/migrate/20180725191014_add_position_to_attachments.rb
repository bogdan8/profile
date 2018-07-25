class AddPositionToAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :position, :integer, default: 0
  end
end
