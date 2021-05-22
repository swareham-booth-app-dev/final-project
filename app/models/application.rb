# == Schema Information
#
# Table name: applications
#
#  id             :integer          not null, primary key
#  date_submitted :date
#  due_date       :date
#  opened_date    :date
#  role_title     :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  company_id     :integer
#  function_id    :integer
#  location_id    :integer
#  offer_id       :integer
#  user_id        :integer
#
class Application < ApplicationRecord
end
