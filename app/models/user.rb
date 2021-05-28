# == Schema Information
#
# Table name: users
#
#  id                              :integer          not null, primary key
#  applications_count              :integer
#  cs_dual_degree                  :boolean
#  email                           :string
#  graduation_year                 :integer
#  password_digest                 :string
#  technical_background            :boolean
#  will_require_work_authorization :boolean
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  validates(:technical_background, { :presence => true })
  validates(:graduation_year, { :numericality => true })
  validates(:graduation_year, { :presence => true })
  has_secure_password
  has_many(:applications, { :class_name => "Application", :foreign_key => "user_id", :dependent => :destroy })
end
