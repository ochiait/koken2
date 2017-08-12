# == Schema Information
#
# Table name: visits
#
#  id          :integer          not null, primary key
#  activity_id :integer          not null
#  content_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Visit < ApplicationRecord
  belongs_to :activity
  belongs_to :content
end
