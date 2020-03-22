class AddColumnDailyToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :daily, :boolean, default: false
  end
end
