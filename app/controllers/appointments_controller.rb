class AppointmentsController < ApplicationController
    def index
        appointments = Appointment.all 
        render json: appointments
     end 
     def show 
        appointment = Appointment.find(params[:id])
        render json: appointment
     end 

     def create

         appointment = Appointment.create(appointment_params)
       
         if appointment.valid?

           render json: appointment
         else  
            render json:{errors: appointment.errors.full_messages}, status: :unprocessable_entity
         end 
 
     end 

     def update
        appointment = Appointment.find(params[:id])
        appointment.update(update_params)
        render json: appointment
     end 

     def destroy
         appointment = Appointment.find(params[:id])
         appointment.destroy
         render json: appointment

     end 

     private
     def appointment_params
         params.permit(:client_id, :volunteer_id, :apoint_date)
     end 

     def update_params
        params.permit(:apoint_date, :rating)
     end 
end
