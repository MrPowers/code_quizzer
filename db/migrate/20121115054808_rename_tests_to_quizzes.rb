class RenameTestsToQuizzes < ActiveRecord::Migration
  def up
  	rename_table :tests, :quizzes
  end

  def down
  	rename_table :quizzes, :tests
  end
end
