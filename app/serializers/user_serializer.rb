class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :password_digest, :username, :email, :average_volunteer_rating, :credit, :is_volunteer
  has_many :volunteer_appointments, foreign_key: :client_id, class_name: 'Appointment', dependent: :destroy
  has_many :volunteers, through: :volunteer_appointments

  has_many :client_appointments, foreign_key: :volunteer_id, class_name: "Appointment", dependent: :destroy
  has_many :clients, through: :client_appointments

end
