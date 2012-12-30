class Skill < ActiveRecord::Base
  attr_accessible :name

  has_many :experiences
  has_many :members, :through => :experiences

  def self.matching(term)
    where(arel_table[:name].matches("%#{term}%"))
  end

  def self.matching_names(term)
    matching(term).pluck(:name)
  end
end
