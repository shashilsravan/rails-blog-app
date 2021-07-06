class SearchpageController < ApplicationController
  def search
    @results = User.search(params[:search])
    if params[:search].present? 
      render :partial => 'result'
    else
      render :search
    end
  end
end