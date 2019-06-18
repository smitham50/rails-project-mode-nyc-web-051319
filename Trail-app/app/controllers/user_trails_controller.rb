class UserTrailsController < ApplicationController

def new
  @user_trail = UserTrail.new
end

def create
  @user_trail = UserTrail.create(user_id: session[:user_id], trail_id: params[:trail_id])
  redirect_to user_path(session[:user_id])
end 

end
