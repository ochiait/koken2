# == Schema Information
#
# Table name: families
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  tel        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :family do
    name "MyString"
    email "MyString"
    tel "MyString"
  end
end
