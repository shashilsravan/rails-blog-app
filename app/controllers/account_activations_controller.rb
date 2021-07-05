class AccountActivationsController < ApplicationController
    def edit
        user = User.find_by(email: params[:email])

        if user && user.authenticated?(:activation, params[:id]) && !user.activated?
            user.activate
            log_in user
            flash[:success] = "Authenticated successfully"
            redirect_to user
        else
            flash[:danger] = "Invalid url request"
            redirect_to root_path
        end
    end
end
