# frozen_string_literal: true

# == Schema Information
#
# Table name: attachments
#
#  id          :bigint(8)        not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  small       :string           default("")
#  medium      :string           default("")
#  large       :string           default("")
#  extra_large :string           default("")
#  position    :integer          default(0)
#  extra_small :string           default("")
#

class Attachment < ApplicationRecord
  acts_as_list

  default_scope { order(:position) }

  has_one_attached :image

  def self.images
    select { |a| a.image.attached? }
  end
end
