# == Schema Information
#
# Table name: locations
#
#  id                 :integer          not null, primary key
#  applications_count :integer
#  city               :string
#  country            :string
#  state              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Location < ApplicationRecord
end
