class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.references :product
      t.attachment :image
      t.boolean :main
      t.integer :priority, default: 1000
      t.timestamps
    end
  end
end
