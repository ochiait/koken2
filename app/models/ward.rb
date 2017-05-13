# == Schema Information
#
# Table name: wards
#
#  id         :integer          not null, primary key
#  name       :string
#  address    :string
#  tel        :string
#  sex        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ward < ApplicationRecord
end
