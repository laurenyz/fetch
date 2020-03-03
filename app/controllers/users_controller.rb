class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def login
        
    end

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end
    
    def destroy
        @user.destroy
        redirect_to users_path
    end


private
    def user_params
        params.require(:user).permit(:name, :username, :address, :location_id)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
