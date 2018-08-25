class AddColumnExtraSmallToAttachment < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :extra_small, :string, default: ''
  end
end
