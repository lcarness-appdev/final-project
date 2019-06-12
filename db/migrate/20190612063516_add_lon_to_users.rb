class AddLonToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lon, :float
  end
end
