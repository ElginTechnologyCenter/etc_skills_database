class Member < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  attr_accessible :bio, :phone, :reason, :referral, :website
  attr_accessible :experiences_attributes

  has_many :experiences
  has_many :skills, :through => :experiences
  accepts_nested_attributes_for :experiences
end
