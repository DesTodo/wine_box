class WelcomeController < ApplicationController
# not REST; user aliaces in router
  def homepage
    render :index
  end

  def about

  end
end
