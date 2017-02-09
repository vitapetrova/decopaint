class CreateWorkImages < ActiveRecord::Migration[5.0]
  def change
    create_table :work_images do |t|
      t.references :work
      t.attachment :image
      t.timestamps
    end
  end
end
