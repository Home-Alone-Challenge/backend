class AddUserIdToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :user_id, :string
  end
end
