class Skill < ActiveRecord::Base
  attr_accessible :name

  has_many :experiences
  has_many :members, :through => :experiences

  validates :name, :uniqueness => {:case_sensitive => false}

  def self.matching(term)
    where(arel_table[:name].matches("%#{term}%"))
  end

  def self.matching_names(term)
    matching(term).pluck(:name)
  end
end
