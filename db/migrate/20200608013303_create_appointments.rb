class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :volunteer_id
      t.string :apoint_date
      t.integer :rating

      t.timestamps
    end
  end
end
