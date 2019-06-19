class AddBooleanFieldsToExams < ActiveRecord::Migration[5.1]
  def change
    add_column :exams, :is_graded, :boolean
    add_column :exams, :is_canceled, :boolean
  end
end
