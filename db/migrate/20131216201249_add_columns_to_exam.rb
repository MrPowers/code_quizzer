class AddColumnsToExam < ActiveRecord::Migration[5.1]
  def change
    add_column :exams, :correct_answers, :integer
    add_column :exams, :incorrect_answers, :integer
    add_column :exams, :unanswered_questions, :integer
  end
end
