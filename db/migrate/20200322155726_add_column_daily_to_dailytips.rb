class AddColumnDailyToDailytips < ActiveRecord::Migration[5.2]
  def change
    add_column :dailytips, :daily, :boolean, default: false
  end
end
