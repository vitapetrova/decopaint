class AddPreviewTextToPage < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :preview_text, :text
  end
end
