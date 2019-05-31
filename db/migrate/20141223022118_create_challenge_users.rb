class CreateChallengeUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :challenge_users do |t|
      t.integer :challenge_id
      t.integer :user_id

      t.timestamps
    end
  end
end
