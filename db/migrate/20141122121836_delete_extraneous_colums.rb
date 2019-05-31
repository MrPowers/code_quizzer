class DeleteExtraneousColums < ActiveRecord::Migration[5.1]
  def change
    remove_column :exams, :status
    remove_column :exams, :correct_answers
    remove_column :exams, :incorrect_answers
    remove_column :exams, :unanswered_questions

    remove_column :questions, :user_id

    remove_column :quizzes, :user_id

    remove_column :topics, :user_id
  end
end
