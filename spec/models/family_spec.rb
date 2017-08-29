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
#  ward_id    :integer
#

require 'rails_helper'

RSpec.describe Family, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
