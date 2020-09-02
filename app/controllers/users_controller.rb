class UsersController < ApplicationController
  
  def new
  end

  def create
    redirect_to new_user_path and return false if params[:user][:password] != params[:user][:password_confirmation]
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to user_path(user.id)
  end

  def login
  end
  
  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
