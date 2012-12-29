class Experience < ActiveRecord::Base
  attr_accessible :member, :skill, :years

  belongs_to :member
  belongs_to :skill
end
