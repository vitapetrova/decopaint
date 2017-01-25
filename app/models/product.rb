class Product < ApplicationRecord
  belongs_to :category_product
  has_many :product_images

  enum status: { 'В наличии' => 'in_stock', 'Нет в наличии' => 'not_in_stock', 'Под заказ' => 'custom' }

  has_attached_file :mini_image
    validates_attachment_content_type :mini_image, content_type: /\Aimage\/.*\Z/
    validates_presence_of :mini_image

  rails_admin do
    edit do
      fields :title, :price, :price2, :status, :min_description, :mini_image
      field :description, :ck_editor
      field :additional_description, :ck_editor
    end
  end

end
