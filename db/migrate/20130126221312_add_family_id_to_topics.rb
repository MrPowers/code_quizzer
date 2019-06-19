class AddFamilyIdToTopics < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :family_id, :integer
  end
end
