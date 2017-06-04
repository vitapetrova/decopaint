class AddLogoDescriptionToHomePage < ActiveRecord::Migration[5.0]
  def change
    add_column :home_pages, :logo_description, :text
    add_column :home_pages, :block_airplane, :text
  end
end
