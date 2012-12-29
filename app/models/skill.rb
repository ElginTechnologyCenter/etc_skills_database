class Skill < ActiveRecord::Base
  attr_accessible :name

  has_many :experiences
  has_many :members, :through => :experiences
end
