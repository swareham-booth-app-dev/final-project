# == Schema Information
#
# Table name: status_events
#
#  id             :integer          not null, primary key
#  date           :date
#  event_type     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  application_id :integer
#
class StatusEvent < ApplicationRecord
    enum({ :event_type => { :phone_screen => 0, :digital_preassessment => 1, :round1_interview => 2, :round2_interview => 3, :round3_interview => 4, :round4_interview => 5, :round5_interview => 6, :round6_interview => 7 } })
    belongs_to(:application, { :required => false, :class_name => "Application", :foreign_key => "application_id" })
end
