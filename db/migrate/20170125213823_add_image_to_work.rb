class AddImageToWork < ActiveRecord::Migration[5.0]
  def change
    add_attachment :works, :image
  end
end
