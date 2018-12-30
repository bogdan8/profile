# frozen_string_literal: true

module AttachmentsHelper
  # method for get image or video
  def get_attachment(attachment)
    return image_tag(attachment.image.url, class: 'responsive') if attachment.image?
    return video_tag(attachment.video.url, class: 'responsive', controls: true) if attachment.video?
  end
end
