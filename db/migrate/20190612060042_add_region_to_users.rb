class AddRegionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :region, :string
  end
end
