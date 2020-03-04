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

    def current_petxpert
        if session[:petxpert_id]
        @current_petxpert ||= Petxpert.find(session[:petxpert_id])
        else
        @current_petxpert = nil
        end
        return @current_petxpert
    end

    def homepage
    end
end
