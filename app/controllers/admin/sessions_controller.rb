class Admin::SessionsController < ApplicationController
  layout "admin"

  def new
  end
  
  # This is where authentication happens(login)
  def create
    @user = User.where(username: params[:username]).first
    if @user.present? && @user.authenticate(params[:password]) #the user exists and the pw is correct
      session[:user_id] = @user.id  # log the user in
      flash[:notice] = "Howdy #{@user.username}!"
      redirect_to admin_books_path
    else
      flash[:alert] = 'Oops! You entered in the wrong username or password.'
      render :new   # something went horribly wrong
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_path
  end


end