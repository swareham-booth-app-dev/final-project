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
end
