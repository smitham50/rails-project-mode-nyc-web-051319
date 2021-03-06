class UserTrailsController < ApplicationController

def new
  @user_trail = UserTrail.new
end

def create
  @user_trail = UserTrail.create(user_id: session[:user_id], trail_id: params[:trail_id])
  redirect_to user_path(session[:user_id])
end

def destroy
  @user_trail = UserTrail.find_by(user_id: session[:user_id], trail_id: (params[:id]).to_i)
  @user_trail.destroy
  redirect_to user_path(session[:user_id])
end

end
