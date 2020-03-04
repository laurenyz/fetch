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
        @appointment = Appointment.create(pet: @pet, service: @service, appt_time: @appt_time,)
        session[:appointment_id]=@appointment.id
        render :add_petxpert
        byebug
       
    end

    def add_petxpert
     
        @appointment = Appointment.find(session[:appointment_id])
        @appointment.petxpert = Petxpert.find(params(:petxpert_id))
    end

    def edit
    end

    def update
    end

    def destroy
    end

private
    def find_appointment
        @appointment = Appointment.find(params[:id])
    end


end
