class AddShowMenuToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :show_menu, :boolean
  end
end
