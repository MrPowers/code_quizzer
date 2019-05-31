class RenameTestIdToQuizId < ActiveRecord::Migration[5.1]
  def change
    rename_column :questions, :test_id, :quiz_id
  end
end
