class WineListsController < ApplicationController

  def new
    @list = WineList.new
  end

  def create
    params[:wine_list][:user_id] = current_user.id
    @list = WineList.create(list_params)
    redirect_to wine_list_path(@list.id)
  end

  def update
    #@wine_list = WineList.find(params[:wine_list][:id])
    #@wine_list.wines << Wine.find_by(params[:wine_id])
  end

  def show
    @user = current_user
    @wine_list = WineList.find(params[:id])
    @wines = @wine_list.wines.all
  end

  def index
    #redirect_to wine_list_path(@user)
  end

  private

  def list_params
    params.require(:wine_list).permit(:name, :user_id)
  end

end
