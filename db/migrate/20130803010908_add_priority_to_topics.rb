class AddPriorityToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :priority, :integer
  end
end
