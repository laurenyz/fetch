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
        @user = User.find(session[:user_id])
    end

    def create
        @pet = Pet.new(name: params[:pet][:name], species: params[:pet][:species], age: params[:pet][:age], description: params[:pet][:description], user_id: session[:owner_id])
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
        @user = @pet.user
        @pet.destroy
        redirect_to user_path(@user)
    end


private
    def pet_params
        params.require(:pet).permit(:name, :species, :age, :description, :user_id)
    end

    def find_pet
        @pet = Pet.find(params[:id])
    end
end
