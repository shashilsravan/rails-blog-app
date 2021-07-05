class SearchPageController < ApplicationController
  def search
    if params[:search].empty?
      flash[:warning] = "Retrieving all users"
      redirect_to users_path
    else
      @parameter = params[:search].downcase
      @results = User.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end
end
