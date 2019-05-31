class CreateSectionQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :section_questions do |t|
      t.text :body
      t.text :answer
      t.string :section_name
      t.integer :order

      t.timestamps
    end
  end
end
