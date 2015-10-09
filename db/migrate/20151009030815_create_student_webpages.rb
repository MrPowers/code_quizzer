class CreateStudentWebpages < ActiveRecord::Migration
  def change
    create_table :student_webpages do |t|
      t.string :name
      t.integer :student_id
      t.date :website_created_at

      t.timestamps
    end
  end
end
