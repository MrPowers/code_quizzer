class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :quiz_id
      t.integer :user_id

      t.timestamps
    end
  end
end
