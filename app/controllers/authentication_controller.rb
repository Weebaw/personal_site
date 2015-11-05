class AuthenticationController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back old friend"
      redirect_to '/'
    else
      flash[:notice] = "Uh oh, something went wrong"
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to '/'
  end

end
