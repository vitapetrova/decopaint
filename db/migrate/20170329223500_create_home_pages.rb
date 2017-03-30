class CreateHomePages < ActiveRecord::Migration[5.0]
  def change
    create_table :home_pages do |t|
      t.text :block1
      t.text :block2
      t.text :block3
      t.timestamps
    end
  end
end
