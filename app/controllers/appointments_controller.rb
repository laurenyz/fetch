class AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @appointment = Appointment.new
        @user = User.find(session[:user_id])
    end

    def create
        @pet = Pet.find(params[:pet_id])
        @service = Service.find(params[:service_id])
        @appt_time = "#{params[:date]} #{params[:appt_time]['time(4i)']}:#{params[:appt_time]['time(5i)']}:00"
        @appointment = Appointment.create(pet: @pet, service: @service, appt_time: @appt_time)
        session[:appointment_id]=@appointment.id
        @location = @appointment.pet.user.location
        render :add_petxpert
    end

    def create_with_petxpert
        @appointment = Appointment.find(session[:appointment_id])
        @petxpert = Petxpert.find(params[:petxpert_id])
        @appointment.update(petxpert: @petxpert)
        redirect_to user_path(@appointment.pet.user)
    end

    def edit
        @user = User.find(session[:user_id])
    end

    def update
        @pet = Pet.find(params[:pet_id])
        @service = Service.find(params[:service_id])
        @appt_time = "#{params[:date]} #{params[:appt_time]['time(4i)']}:#{params[:appt_time]['time(5i)']}:00"
        @appointment.update(pet: @pet, service: @service, appt_time: @appt_time)
        session[:appointment_id]=@appointment.id
        render :edit_petxpert
    end

    def update_with_petxpert
        @appointment = Appointment.find(session[:appointment_id])
        @petxpert = Petxpert.find(params[:petxpert_id])
        @appointment.update(petxpert: @petxpert)
        redirect_to user_path(@appointment.pet.user)
    end

    def destroy
        @user = @appointment.pet.user
        @appointment.destroy
        redirect_to user_path(@user)
    end

private
    def find_appointment
        @appointment = Appointment.find(params[:id])
    end


end
