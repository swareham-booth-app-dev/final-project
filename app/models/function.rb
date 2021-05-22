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
    has_many(:applications, { :class_name => "Application", :foreign_key => "function_id" })
end
