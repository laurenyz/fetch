class ApplicationController < ActionController::Base

    def homepage
        @locations = Location.all
    end
end
