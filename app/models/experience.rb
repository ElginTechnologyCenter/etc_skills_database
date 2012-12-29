class Experience < ActiveRecord::Base
  attr_accessible :member, :skill, :years
  attr_accessible :name

  belongs_to :member
  belongs_to :skill

  def name
    skill ? skill.name : ''
  end

  def name=(n)
    if skill
      skill.name = n
    else
      self.skill = Skill.create(:name => n)
    end
  end
end
