class RemoveStatusFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :status, :string
  end
end
