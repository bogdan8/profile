class RemoveVideoFromAttachments < ActiveRecord::Migration[5.2]
  def change
    remove_attachment :attachments, :video
  end
end
