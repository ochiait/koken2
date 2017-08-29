# == Schema Information
#
# Table name: guradian_contents
#
#  id          :integer          not null, primary key
#  guardian_id :string
#  content_id  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe GuradianContent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
