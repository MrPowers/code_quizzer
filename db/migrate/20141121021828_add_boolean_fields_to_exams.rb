class AddBooleanFieldsToExams < ActiveRecord::Migration
  def change
    add_column :exams, :is_graded, :boolean
    add_column :exams, :is_canceled, :boolean
  end
end
