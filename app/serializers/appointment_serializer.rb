class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :apoint_date, :client_id, :volunteer_id, :rating
  
end
