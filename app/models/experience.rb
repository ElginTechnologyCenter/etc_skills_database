class Experience < ActiveRecord::Base
  attr_accessible :member, :skill, :years
  attr_accessible :name

  belongs_to :member
  belongs_to :skill

  validates :skill_id, :uniqueness => {:scope => :member_id}

  def name
    skill ? skill.name : ''
  end

  def name=(n)
    self.skill = Skill.where(:name => n).first_or_create
  end
end
