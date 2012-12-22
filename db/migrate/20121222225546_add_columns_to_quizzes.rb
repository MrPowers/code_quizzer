class AddColumnsToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :description, :text
    add_column :quizzes, :topic_id, :integer
  end
end
