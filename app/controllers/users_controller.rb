class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
     @user = User.find(params[:id])
  end

  def edit

  end

  def destroy
  bad_user = User.find(params[:id])
  if bad_user.destroy
    flash[:notice] = "User has been deleted"
  end

  redirect_to users_path
  end
end