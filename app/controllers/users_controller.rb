class UsersController < ApplicationController
	before_action :logged_in_redirect, :only => [:new, :create]	
  def new
  end

  def create
  	@user = User.new(user_params)
    if @user.save
      flash[:success] = "Sign up success!!!"
      redirect_to login_path
    else
      flash[:error] = "Oops!, Something wrong with your input!"
      render :new
    end
  end

  private

  def user_params
  	params.require(:user).permit(:username, :password)
  end
end
