class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.text :text
      t.string :url
      t.boolean :show_menu
      t.integer :priority, default: 1000
      t.string :slug
      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
