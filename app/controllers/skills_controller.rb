class SkillsController < ApplicationController
  respond_to :json

  expose(:skills)
  expose(:matching_names) {
    skills.limit(10).matching_names(params[:term])
  }

  def index
    respond_with skills
  end

  def matching
    respond_with matching_names
  end
end
