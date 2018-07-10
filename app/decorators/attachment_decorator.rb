class AttachmentDecorator < ApplicationDecorator
  delegate_all

  def get_images
    select(&:image?)
  end

  def get_videos
    select(&:video?)
  end
end
