class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.text :first_name
      t.text :last_name
      t.text :address
      t.text :city
      t.text :province
      t.text :postal_code
      t.text :telephone
      t.text :email
    end
  end
end
