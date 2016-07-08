class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :name
      t.text :species
      t.text :breed
      t.timestamps null: false
    end
  end
end
