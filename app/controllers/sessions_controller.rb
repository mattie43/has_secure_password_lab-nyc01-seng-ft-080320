class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:user][:name])
    # byebug
    redirect_to user_login_path and return false if @user == nil
    redirect_to user_login_path and return false unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
  end
end
