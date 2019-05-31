class AddQuestionSummaryToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :question_summary, :text
  end
end
