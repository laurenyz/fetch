class CreatePetxpertServices < ActiveRecord::Migration[6.0]
  def change
    create_table :petxpert_services do |t|
      t.integer :petxpert_id
      t.integer :service_id

      t.timestamps
    end
  end
end
