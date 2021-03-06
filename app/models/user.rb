# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  dob             :date
#  email           :string
#  password_digest :text
#  phone           :integer
#  gender          :string
#  description     :text
#  smoker          :boolean
#  interests       :text
#  car             :boolean
#  car_type        :string
#  car_year        :integer
#  car_model       :string
#  image           :text
#  occupation      :string
#  created_at      :datetime
#  updated_at      :datetime
#  is_admin        :boolean          default("false")
#  profile         :string
#

class User < ActiveRecord::Base 
  mount_uploader :profile, ProfileUploader
  
  has_secure_password

  has_many :adventures 
  has_many :bookings 

  validates :email, :presence => true, :uniqueness => true 
end 
