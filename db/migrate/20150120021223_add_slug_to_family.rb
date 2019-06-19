class AddSlugToFamily < ActiveRecord::Migration[5.1]
  def change
    add_column :families, :slug, :string
  end
end
