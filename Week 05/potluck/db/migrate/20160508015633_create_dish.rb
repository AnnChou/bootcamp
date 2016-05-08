class CreateDish < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.text :name
      t.text :type_of_dish
      t.text :main_ingredient
      t.integer :serving_size
      t.timestamp null: false
    end
  end
end
