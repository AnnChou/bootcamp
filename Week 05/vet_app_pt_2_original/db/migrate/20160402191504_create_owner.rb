class CreateOwner < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.text :name
      t.text :address
      t.text :city
      t.text :state
      t.text :postal_code
      t.text :phone
      t.text :email
      t.timestamps null: false
    end
    add_reference :pets, :owner, index: true
  end
end
