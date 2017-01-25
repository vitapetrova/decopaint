class AddMiniImageToProduct < ActiveRecord::Migration[5.0]
  def change
    add_attachment :products, :mini_image
  end
end
