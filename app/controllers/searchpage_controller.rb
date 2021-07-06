class SearchpageController < ApplicationController
  def search
    @results = User.search(params[:search])
    # render :search
  end
end