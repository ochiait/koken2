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
#  gurdian_id :integer
#  ward_id    :integer
#

class Activity < ApplicationRecord
  mount_uploader :photo, ActivityPhotoUploader
  belongs_to :guardian
  belongs_to :ward
end
