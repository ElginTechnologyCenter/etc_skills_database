class Member < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  attr_accessible :bio, :phone, :reason, :referral, :website
end
