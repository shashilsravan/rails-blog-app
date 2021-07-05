class HomeController < ApplicationController
  def index
    @microposts = Micropost.all
  end

  def about
  end

  def contact
  end
end
