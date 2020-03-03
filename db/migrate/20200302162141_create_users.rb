class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.integer :location_id
      t.string :username
      t.string :photo

      t.timestamps
    end
  end
end
