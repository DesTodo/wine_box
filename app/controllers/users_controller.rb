
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    if session[:user_id] == nil
      render file: "/public/404"
    else
      @user = User.find(params[:id])
    end
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:welcome] = "Successful login"
      redirect_to user_path(@user)
    else
      flash[:warning] = "Username already exists, please choose new username"
      #flash[:warning] = "Account with the provided information exists. Please login."
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
    params.require(:user).permit(:username, :password, :role.to_s.to_i, :first_name, :last_name, :zipcode, :age)
  end
end
