class SessionsController < ApplicationController
    skip_before_action :authorize, raise: false
    
    def new
        if current_user
            redirect_to workouts_path(@current_user)
        end
    end

    def create
        user = User.find_by_email(params[:email])
        if user
            if user.password_digest.nil?
                flash[:alert] = I18n.t("warnings.setting-password")
                redirect_to login_path
            elsif user.authenticate(params[:password])
                session[:user_id] = user.id
                redirect_to workouts_path(user)
            else
                flash[:alert] = I18n.t("warnings.incorrect-login")
                redirect_to login_path
            end
        else
            flash[:alert] = I18n.t("warnings.incorrect-login")
            redirect_to login_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end

end
