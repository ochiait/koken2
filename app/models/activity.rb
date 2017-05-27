# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  content    :string
#  memo       :string
#  comment    :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ApplicationRecord
  mount_uploader :photo, ActivityPhotoUploader
  has_many :visits
  has_many :contents, through: :visits
end
