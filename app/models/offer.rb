# == Schema Information
#
# Table name: offers
#
#  id                :integer          not null, primary key
#  annual_salary     :float
#  date_received     :string
#  end_date          :date
#  response_due_date :date
#  signing_bonus     :float
#  start_date        :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Offer < ApplicationRecord
end
