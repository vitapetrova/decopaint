class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.attachment :logo
      t.text :text
      t.timestamps
    end
  end
end
