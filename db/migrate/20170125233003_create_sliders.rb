class CreateSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :sliders do |t|
      t.attachment :image
      t.integer :priority, default: 1000
      t.timestamps
    end
  end
end
