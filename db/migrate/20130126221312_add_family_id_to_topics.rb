class AddFamilyIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :family_id, :integer
  end
end
