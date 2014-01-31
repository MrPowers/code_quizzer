class AddSlugToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :slug, :string
    add_index :quizzes, :slug
  end
end
