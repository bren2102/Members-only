class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:welcome] = 'Welcome to the Clubhouse'
      log_in_user(@user)
      remember(@user)
      redirect_to posts_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  private

  def user_params
    params.require('user').permit(:name, :email, :password, :password_confirmation)
  end
end
