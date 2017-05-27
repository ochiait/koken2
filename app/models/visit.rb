# == Schema Information
#
# Table name: visits
#
#  id          :integer          not null, primary key
#  activity_id :integer
#  content_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Visit < ApplicationRecord
  belongs_to :activity
  belongs_to :content
end
