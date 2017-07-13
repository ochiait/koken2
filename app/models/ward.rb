# == Schema Information
#
# Table name: wards
#
#  id          :integer          not null, primary key
#  name        :string
#  address     :string
#  tel         :string
#  sex         :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  guardian_id :integer
#

class Ward < ApplicationRecord
  belongs_to :guardian
  has_many :activities
  enum sex: { male: 1, female: 2 }
end