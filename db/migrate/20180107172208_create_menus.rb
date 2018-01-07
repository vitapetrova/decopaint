class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.boolean :current
      t.string :phone
      t.timestamps
    end
  end
end
