class SkillsController < ApplicationController
  respond_to :json

  expose(:skills)
  expose(:matching_names) {
    skills.matching(params[:term]).limit(10).pluck(:name)
  }

  def index
    respond_with skills
  end

  def matching
    respond_with matching_names
  end
end
