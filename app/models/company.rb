# == Schema Information
#
# Table name: companies
#
#  id                 :integer          not null, primary key
#  applications_count :integer
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Company < ApplicationRecord
end
