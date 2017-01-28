class SearchesController < ApplicationController

  def auto_search
    @searches = Search.related_searches(params[:search])
    render json: @searches
  end
end
