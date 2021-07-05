class SessionsController < ApplicationController
  before_action :logged, only: %i[ new create]

  def new
  end

  def create 
    user = User.find_by(email: params[:sesssion][:email].downcase)
    if user&.authenticate(params[:sesssion][:password])
        if user.activated?
          log_in user
          params[:sesssion][:remember_me] == '1' ? remember(user) : forget(user)
          flash[:success] = "Loggedin successfully"
          redirect_back_or(user)
        else
          message = "Account not activated. "
          message += "Check your email for the activation link."
          flash[:warning] = message
          redirect_to root_url
        end
    else
      flash.now[:danger] = "Invalid email/password"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = "Logged out successfully"
    redirect_to root_path
  end

  private
    def logged
      if logged_in?
        flash[:danger] = "You are loggedin already"
        redirect_to root_path
      end
    end
  
end
