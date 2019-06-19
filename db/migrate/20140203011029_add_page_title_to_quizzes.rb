class AddPageTitleToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_column :quizzes, :page_title, :string
  end
end
