class WinesController < ApplicationController
  before_method :current_user, only [:index]
  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.create(wine_params)

    render :index
  end

  def index
    #search form
  end

  def current_user?
    if current_user.id != params[:user_id].to_i
      render file: "404"
  end

end
