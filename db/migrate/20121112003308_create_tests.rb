class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :body

      t.timestamps
    end
  end
end
