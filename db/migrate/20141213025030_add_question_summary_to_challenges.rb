class AddQuestionSummaryToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :question_summary, :text
  end
end
