class RemovePriorityFromTopics < ActiveRecord::Migration[5.1]
  def up
    remove_column :topics, :priority
  end

  def down
    add_column :topics, :priority, :integer
  end
end
