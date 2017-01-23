class Product < ApplicationRecord
  belongs_to :category_product
  enum status: { 'В наличии' => 'in_stock', 'Нет в наличии' => 'not_in_stock', 'custom' => 'Под заказ' }

  rails_admin do
    edit do
      fields :title, :price, :price2, :status, :min_description
      field :description, :ck_editor
      field :additional_description, :ck_editor
    end
  end
end
