class AppointmentsController < ApplicationController
    before_action :find_appointment, only: [:show, :edit, :update, :destroy]

    def show
    end

    def new
        @appointment = Appointment.new
        @user = User.find(session[:user_id])
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
    def find_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:pet_id, :petxpert_id, :service_id, :appt_time)
    end


end
