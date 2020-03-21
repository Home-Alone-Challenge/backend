class AddUniqueIdtoUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :unique_id, :string
  end
end
