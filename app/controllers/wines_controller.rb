class WinesController < ApplicationController
  before_action :current_user, only: [:index]

  def new
    @wine = Wine.new
  end

  def show
    @wine = Wine.find(params[:id])
  end

  def create
    @wine = Wine.create(wine_params)

    render :index
  end

  def index
    @wines = Wine.all
  end

  def current_user?
    if current_user.id != params[:user_id].to_i
      render file: "404"
    end
  end

end
