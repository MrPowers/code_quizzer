class RemoveStatusFromAnswers < ActiveRecord::Migration[5.1]
  def change
    remove_column :answers, :status, :string
  end
end
