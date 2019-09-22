# frozen_string_literal: true

module AttachmentsHelper
  # method for get image or video
  def get_attachment(attachment)
    return image_tag(attachment.image.variant(resize: '250x250'), class: 'responsive') if attachment.image.attached?
  end
end
