class Profile < ActiveRecord::Base
  attr_accessible :bio, :phone, :reason, :referral, :website

  belongs_to :member
end
