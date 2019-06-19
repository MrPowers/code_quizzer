class AddSlugToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :slug, :string
    add_index :quizzes, :slug
  end
end
