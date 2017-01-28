class CreateManufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.string :title
      t.attachment :image
      t.string :link
      t.timestamps
    end
  end
end
