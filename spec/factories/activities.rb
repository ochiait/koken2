# == Schema Information
#
# Table name: activities
#
#  id           :integer          not null, primary key
#  content      :string
#  memo         :string
#  comment      :string
#  photo        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  gurdian_id   :integer
#  ward_id      :integer
#  meeting_date :datetime
#

FactoryGirl.define do
  factory :activity do
    content "MyString"
    memo "MyString"
    comment "MyString"
    photo "MyString"
  end
end
