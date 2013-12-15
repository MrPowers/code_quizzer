class RenameTestIdToQuizId < ActiveRecord::Migration
  def change
    rename_column :questions, :test_id, :quiz_id
  end
end
