class AddImageToStaticPage < ActiveRecord::Migration[5.0]
  def change
    add_attachment :pages, :image
  end
end
