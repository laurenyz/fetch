class PetxpertServicesController < ApplicationController
    before_action :find_petxpert_service, only: [:edit, :update, :delete]
    
    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

private
    def petxpert_service_params
        params.require(:petxpert_service).permit(:petxpert_id, service_ids: [])
    end

    def find_petxpert_service
        @petxpert_service = PetxpertService.find(params[:id])
    end
end
