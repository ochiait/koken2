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

class Content < ApplicationRecord
  has_many :visits
  has_many :activities, through: :visits
end
