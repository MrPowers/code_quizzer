class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :exam_id
      t.integer :question_id
      t.string :status

      t.timestamps
    end
  end
end
