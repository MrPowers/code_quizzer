class AddPageTitleToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :page_title, :string
  end
end
