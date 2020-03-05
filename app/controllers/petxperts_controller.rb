class PetxpertsController < ApplicationController
    before_action :find_petxpert, only: [:show, :edit, :update, :destroy]
    before_action :authorized_petxpert, only: [:edit, :update, :destroy]

    def login

    end

    def index
        @petxperts = Petxpert.all
        @petxperts = @petxperts.sort_by{|petxpert| petxpert.name.downcase}
    end

    def show
    end

    def new
        @petxpert = Petxpert.new
    end

    def create
        @petxpert = Petxpert.new(petxpert_params)
        if @petxpert.valid?
            @petxpert.save
            session[:petxpert_id] = @petxpert.id
            redirect_to petxpert_path(@petxpert)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @petxpert.update(petxpert_params)
        redirect_to petxpert_path(@petxpert)
    end
    
    def destroy
        @petxpert.destroy
        redirect_to logout_path
    end


private
    def petxpert_params
        params.require(:petxpert).permit(:name, :username, :description, :location_id, :password, service_ids: [])
    end

    def find_petxpert
        @petxpert = Petxpert.find(params[:id])
    end

end
