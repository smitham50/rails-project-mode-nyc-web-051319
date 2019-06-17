class SessionsController < ApplicationController

  def new
    render :login
  end

  def create
    #authenticate user
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to trails_path
    else
      flash[:failed_login] = "Unsuccessfull, Please enter valid login credentials"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
