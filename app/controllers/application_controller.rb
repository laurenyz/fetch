class ApplicationController < ActionController::Base
    helper_method :current_user, :current_petxpert

    def current_user  
        if session[:user_id]
        @current_user ||= User.find(session[:user_id])
        else
        @current_user = nil
        end
        return @current_user
    end

    def logged_in_user?
        !!current_user
    end

    def authorized_user
        flash[:warning1] = "You must be logged in."
        redirect_to user_login_path unless logged_in_user?
    end

    def current_petxpert
        if session[:petxpert_id]
        @current_petxpert ||= Petxpert.find(session[:petxpert_id])
        else
        @current_petxpert = nil
        end
        return @current_petxpert
    end

    def logged_in_petxpert?
        !!current_petxpert
    end

    def authorized_petxpert
        flash[:warning2] = "You must be logged in."
        redirect_to petxpert_login_path unless logged_in_petxpert?
    end

    def homepage
    end
end
