class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :photo
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
