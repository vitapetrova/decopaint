class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name_product
      t.string :volume
      t.float :price1
      t.float :price2
      t.boolean :painting
      t.integer :amount
      t.string :name
      t.string :phone
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
