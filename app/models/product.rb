class Product < ApplicationRecord
  belongs_to :category_product
  enum status: { 'В наличии' => 'in_stock', 'Нет в наличии' => 'not_in_stock', 'custom' => 'Под заказ' }
end
