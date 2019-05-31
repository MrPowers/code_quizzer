class AddSlugToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :slug, :text
  end
end
