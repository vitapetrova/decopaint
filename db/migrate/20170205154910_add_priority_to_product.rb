class AddPriorityToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :priority, :integer, default: 1000
  end
end
