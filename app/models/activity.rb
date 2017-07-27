# == Schema Information
#
# Table name: activities
#
#  id          :integer          not null, primary key
#  memo        :string
#  comment     :string
#  photo       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  guardian_id :integer
#  ward_id     :integer
#  meetng_at   :datetime
#

class Activity < ApplicationRecord
  mount_uploader :photo, ActivityPhotoUploader
  belongs_to :guardian
  belongs_to :ward
  has_many :visits
  has_many :contents, through: :visits
  scope :oneyear, -> { where('created_at > ?', 1.years.ago) }

  def create_with_visit(visit,content_id)
   ActiveRecord::Base.transaction do
    self.save!
    visit.activity_id = self.id
    visit.content_id = content_id
    visit.save!
   end
  end
end
