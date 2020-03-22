class AddPgcryptoToDb < ActiveRecord::Migration[5.2]
  def change
    execute <<-SQL
      CREATE extension IF NOT EXISTS pgcrypto;
    SQL
  end
end
