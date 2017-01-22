class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.float :price2
      t.string :status
      t.text :min_description
      t.text :description
      t.text :additional_description
      t.references :category_product, foreign_key: true
      t.timestamps
    end
  end
end
