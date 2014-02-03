class AddPageTitleToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :page_title, :string
  end
end
