class PetsController < ApplicationController
    before_action :find_pet, only: [:show, :edit, :update, :destroy]

    def index
        @pets = Pet.all
        @pets = @pets.sort_by{|pet| pet.name.downcase}
    end

    def show
    end

    def new
        @pet = Pet.new
    end

    def create
        @pet = Pet.new(pet_params)
        if @pet.valid?
            @pet.save
            redirect_to pet_path(@pet)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @pet.update(pet_params)
        redirect_to pet_path(@pet)
    end
    
    def destroy
        @pet.destroy
        redirect_to pet_path
    end


private
    def pet_params
        params.require(:pet).permit(:name, :species, :age, :description, :user_id)
    end

    def find_pet
        @pet = Pet.find(params[:id])
    end
end
