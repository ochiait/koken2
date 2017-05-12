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

require 'rails_helper'

RSpec.describe Ward, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
