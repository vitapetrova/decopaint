class AddPaintingToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :painting, :boolean
  end
end
