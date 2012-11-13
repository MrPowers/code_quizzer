class AddUserIdToTests < ActiveRecord::Migration
  def change
    add_column :tests, :user_id, :integer
  end
end
