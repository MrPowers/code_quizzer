class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
