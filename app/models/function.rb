# == Schema Information
#
# Table name: functions
#
#  id                 :integer          not null, primary key
#  applications_count :integer
#  name               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Function < ApplicationRecord
end
