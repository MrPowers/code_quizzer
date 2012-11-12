class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :body
      t.text :answer
      t.integer :test_id

      t.timestamps
    end
  end
end
