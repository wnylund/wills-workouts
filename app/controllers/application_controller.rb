class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :authorize
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]        
    end

    def authorize
        redirect_to login_path unless current_user
    end

end
