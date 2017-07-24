# == Schema Information
#
# Table name: guardians
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  company_name           :string
#  last_name              :string
#  first_name             :string
#  last_name_kana         :string
#  first_name_kana        :string
#  zip                    :string
#  pref                   :string
#  city                   :string
#  addr1                  :string
#  addr2                  :string
#  tel                    :string
#  mobile                 :string
#  url                    :string
#

require 'rails_helper'

RSpec.describe Guardian, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
