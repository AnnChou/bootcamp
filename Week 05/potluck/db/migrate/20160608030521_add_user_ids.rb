class AddUserIds < ActiveRecord::Migration
  def change
      add_column :events, :user_id, :integer
      add_column :dishes, :user_id, :integer
  end
end
