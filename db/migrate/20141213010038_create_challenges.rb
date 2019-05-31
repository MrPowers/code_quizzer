class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.text :question
      t.text :answer_description
      t.text :answer

      t.timestamps
    end
  end
end
