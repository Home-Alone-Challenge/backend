class AddTimeToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :duration, :integer
  end
end
