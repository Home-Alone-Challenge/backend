class AddUuidToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :userId, :string, default: SecureRandom.uuid
  end
end
