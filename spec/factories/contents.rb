# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :string
#

FactoryGirl.define do
  factory :content do
    body "MyString"
  end
end
