class AddSlugToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :slug, :text
  end
end
