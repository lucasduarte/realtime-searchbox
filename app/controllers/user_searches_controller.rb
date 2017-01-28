class UserSearchesController < ApplicationController

  def search
    UserSearch.search(params[:search])
  end
end
