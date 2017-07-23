class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @search = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if user.save session[:user_id] = @user.id
      flash[:welcome] = "Successful login"
      redirect_to user_path(@user)
    elsif User.find_by(username: params[:username]).nil = false
      flash[:warning] = "Username already exists, please choose new username"
      redirect_to new_user_path
    end
  end

  def index
    if current_user.client?
      @users = User.all
    else
      render file: "/public/404"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :role)
  end
end
