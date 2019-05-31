class AddPageTitleToFamilies < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :page_title, :string
  end
end
