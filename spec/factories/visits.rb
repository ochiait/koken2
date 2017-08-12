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

FactoryGirl.define do
  factory :visit do
    activity_id 1
    content_id 1
  end
end
