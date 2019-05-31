class RenameTestsToQuizzes < ActiveRecord::Migration[5.1]
  def up
    rename_table :tests, :quizzes
  end

  def down
    rename_table :quizzes, :tests
  end
end
