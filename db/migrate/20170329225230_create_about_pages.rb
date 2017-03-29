class CreateAboutPages < ActiveRecord::Migration[5.0]
  def change
    create_table :about_pages do |t|
      t.text :main_text
      t.text :block1
      t.text :block2
      t.text :block3
      t.text :block4
      t.text :block5
      t.text :block6
      t.timestamps
    end
  end
end
