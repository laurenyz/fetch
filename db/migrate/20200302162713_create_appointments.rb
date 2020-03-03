class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :pet_id
      t.integer :petxpert_id
      t.integer :service_id
      t.datetime :appt_time

      t.timestamps
    end
  end
end
