# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  content    :string
#  memo       :string
#  comment    :string
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gurdian_id :integer
#  ward_id    :integer
#  meetng_at  :datetime
#

require 'rails_helper'

RSpec.describe Activity, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
