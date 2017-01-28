class SearchesController < ApplicationController
  respond_to :json

  def auto_search
    @searches = Search.related_searches(params[:search])
    render json: @searches
  end
end
