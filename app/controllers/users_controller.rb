class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
    p @user
  end

  def create

    user = User.create(user_params)
    redirect_to users_path
  end

  def edit
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :phone_number, :password)
  end
end
