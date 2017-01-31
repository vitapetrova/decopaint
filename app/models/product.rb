class Product < ApplicationRecord
  belongs_to :category_product
  has_many :product_images
  has_many :relationships, foreign_key: "main_id", dependent: :destroy
  has_many :complementary_products, through: :relationships, source: :complementary

  enum status: { 'В наличии' => 'in_stock', 'Нет в наличии' => 'not_in_stock', 'Под заказ' => 'custom' }

  has_attached_file :mini_image
    validates_attachment_content_type :mini_image, content_type: /\Aimage\/.*\Z/
    validates_presence_of :mini_image

  rails_admin do
    edit do
      fields :title, :category_product, :volume, :price, :price2, :volume_2, :price_2, :price_22, :volume_3, :price_3, :price_32
      fields :status, :min_description, :mini_image, :complementary_products, :seo_title, :seo_description
      field :description, :ck_editor
      field :additional_description, :ck_editor
    end
  end

end
