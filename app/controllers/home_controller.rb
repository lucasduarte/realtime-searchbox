class HomeController < ApplicationController
  def index
  end

  def destroy_all
    UserSearch.destroy_all
    Search.destroy_all

    redirect_to action: :index
  end
end
