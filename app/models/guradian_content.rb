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

class GuradianContent < ApplicationRecord
end
