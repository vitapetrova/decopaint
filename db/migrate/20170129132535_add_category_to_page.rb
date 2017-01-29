class AddCategoryToPage < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :category_page, index: true
  end
end
