class AddCatNameToProductCategories < ActiveRecord::Migration[8.1]
  def change
    add_column :product_categories, :cat_name, :string
  end
end
