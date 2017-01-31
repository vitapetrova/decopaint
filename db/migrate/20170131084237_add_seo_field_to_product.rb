class AddSeoFieldToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :seo_description, :string
    add_column :products, :seo_title, :string
    add_column :category_products, :seo_description, :string
    add_column :category_products, :seo_title, :string
    add_column :pages, :seo_description, :string
    add_column :pages, :seo_title, :string
  end
end
