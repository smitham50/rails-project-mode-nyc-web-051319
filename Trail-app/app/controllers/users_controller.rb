class UsersController < ApplicationController

  def show
    @user = User.find(session[:user_id])
    @user_trails = @user.trails
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to trails_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
