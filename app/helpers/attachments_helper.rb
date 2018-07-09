module AttachmentsHelper
  # method for get image or video
  def get_attachment(attachment)
    return image_tag(attachment.image) if attachment.image?
    return video_tag(attachment.video) if attachment.video?
  end
end
