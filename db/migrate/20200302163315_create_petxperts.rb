class CreatePetxperts < ActiveRecord::Migration[6.0]
  def change
    create_table :petxperts do |t|
      t.string :name
      t.string :username
      t.string :photo
      t.integer :location_id
      t.text :description

      t.timestamps
    end
  end
end
