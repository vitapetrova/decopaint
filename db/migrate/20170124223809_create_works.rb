class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :title
      t.text :text_field
      t.boolean :show_menu
      t.references :category_work, foreign_key: true
      t.timestamps
    end
  end
end
