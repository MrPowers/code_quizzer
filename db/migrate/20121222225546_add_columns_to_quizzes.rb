class AddColumnsToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :description, :text
    add_column :quizzes, :topic_id, :integer
  end
end
