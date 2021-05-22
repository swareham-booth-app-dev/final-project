# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  applications_count   :integer
#  cs_dual_degree       :boolean
#  email                :string
#  password_digest      :string
#  technical_background :boolean
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
end
