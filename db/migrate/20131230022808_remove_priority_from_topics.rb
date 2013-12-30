class RemovePriorityFromTopics < ActiveRecord::Migration
  def up
    remove_column :topics, :priority
  end

  def down
    add_column :topics, :priority, :integer
  end
end
