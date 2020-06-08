class User < ApplicationRecord
     has_many :volunteer_appointments, foreign_key: :client_id, class_name: "Appointment"
     has_many :volunteers, through: :volunteer_appointments

     has_many :client_appointments, foreign_key: :volunteer_id, class_name: "Appointment"
     has_many :clients, through: :client_appointments

     validates :username, presence: true, uniqueness: true
     validates :email, presence: true, uniqueness: true
     validates :password_digest, presence: true
     
     has_secure_password
end
