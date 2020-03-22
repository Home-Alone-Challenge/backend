class AddCreatorToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_reference :challenges, :user, type: :uuid, foreign_key: true
  end
end
