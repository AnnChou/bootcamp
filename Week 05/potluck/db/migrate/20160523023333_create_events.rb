class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :date
      t.text :start_time
      t.text :end_time
      t.text :address
      t.text :phone

      add_reference :dishes, :event, index: true
    end
  end
end
