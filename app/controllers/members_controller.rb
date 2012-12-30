class MembersController < ApplicationController
  respond_to :html, :json

  expose(:members)
  expose(:member)
  expose(:experience) {Experience.new}

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    params[:member][:experiences_attributes].delete('replace_this')
    flash[:notice] = 'Member was successfully created.' if member.save
    respond_with member
  end

  def update
    params[:member][:experiences_attributes].delete('replace_this')
    if params[:new_skill].present?
      member.experiences.create(:name => params[:new_skill])
    end
    flash[:notice] = 'Member was successfully updated.' if member.save
    respond_with member, :location => edit_member_url(member)
  end

  def destroy
    member.destroy
    redirect_to members_url
  end
end
