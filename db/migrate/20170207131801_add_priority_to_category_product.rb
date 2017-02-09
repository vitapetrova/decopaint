class AddPriorityToCategoryProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :category_products, :priority, :integer, default: 1000
  end
end
