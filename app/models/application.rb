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
    belongs_to(:user, { :required => false, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
    has_many(:status_events, { :class_name => "StatusEvent", :foreign_key => "application_id", :dependent => :destroy })
    belongs_to(:company, { :required => false, :class_name => "Company", :foreign_key => "company_id", :counter_cache => true })
    belongs_to(:function, { :required => false, :class_name => "Function", :foreign_key => "function_id", :counter_cache => true })
    belongs_to(:location, { :required => false, :class_name => "Location", :foreign_key => "location_id", :counter_cache => true })
    belongs_to(:offer, { :required => false, :class_name => "Offer", :foreign_key => "offer_id" })
end
