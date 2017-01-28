class UserSearchesController < ApplicationController
  respond_to :json
  
  def search
    UserSearch.search(params[:search])
  end
end
