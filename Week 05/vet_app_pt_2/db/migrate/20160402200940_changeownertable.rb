class Changeownertable < ActiveRecord::Migration
  def change
    rename_column :owners, :state, :province
  end
end
