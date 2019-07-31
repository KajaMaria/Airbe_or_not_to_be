class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    # flashes a notification if invalid
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created user!'
      redirect_to listings_index_path
    # else     will implement when 2 users use same email
    #   flash[:warning] = 'Invalid email or password'
    #   redirect_to '/user/new'
    end
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
