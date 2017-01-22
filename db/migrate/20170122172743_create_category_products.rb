class CreateCategoryProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :category_products do |t|
      t.string :title
      t.text :description
      t.text :description2
      t.boolean :show_menu
      t.timestamps
    end
  end
end
