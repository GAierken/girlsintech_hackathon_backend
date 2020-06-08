class Appointment < ApplicationRecord
    belongs_to :client, class_name: "User"
    belongs_to :volunteer, class_name: "User"

    validates :apoint_date, presence: true, uniqueness: true
    validates :client_id, presence: true
    validates :volunteer_id, presence: true
end
