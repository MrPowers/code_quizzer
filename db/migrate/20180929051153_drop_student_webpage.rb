class DropStudentWebpage < ActiveRecord::Migration[5.1]
  def change
    drop_table :student_webpages
  end
end
