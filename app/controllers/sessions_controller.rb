class SessionsController < ApplicationController
  def new_user_login
  end

  def create_user_login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:notice] = "Username and password combination invalid."
      render :new_user_login
    end
  end

  def new_petxpert_login
  end

  def create_petxpert_login
    petxpert = Petxpert.find_by(username: params[:username])
    if petxpert && petxpert.authenticate(params[:password])
      session[:petxpert_id] = petxpert.id
      redirect_to petxpert_path(petxpert)
    else
      flash[:notice] = "Username and password combination invalid."
      render :new_petxpert_login
    end
  end

  def logout
      session.clear
      redirect_to homepage_path
  end


end
