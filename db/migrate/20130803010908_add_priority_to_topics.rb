class AddPriorityToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :priority, :integer
  end
end
