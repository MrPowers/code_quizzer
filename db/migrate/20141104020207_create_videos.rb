class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :link
      t.text :description
      t.integer :quiz_id

      t.timestamps
    end
  end
end
