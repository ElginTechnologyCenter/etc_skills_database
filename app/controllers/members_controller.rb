class MembersController < ApplicationController
  respond_to :html, :json

  expose(:members)
  expose(:member)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    flash[:notice] = 'Member was successfully created.' if member.save
    respond_with member
  end

  # PUT /members/1
  # PUT /members/1.json
  def update
    flash[:notice] = 'Member was successfully updated.' if member.save
    respond_with member
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    member.destroy
    redirect_to members_url
  end
end
