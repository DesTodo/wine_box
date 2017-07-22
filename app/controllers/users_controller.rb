class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @search = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    flash[:welcome] = "Successful login"

    render "show"
  end



  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
