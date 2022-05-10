class AppointmentsController < ApplicationController
    
    def index
        render json: Appointment.all
    end

    def show
        appointment = Appointment.find_by(id: params[:id])
        render json: appointment
    end
    
    def create
        appointment = Appointment.create!(appointment_params)
        render json: appointment.activity, status: :created
    end

    def appointment_params
        params.permit(:date, :time, :duration, :user_id, :dentist_id )
    end
end
