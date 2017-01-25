class ProductImage < ApplicationRecord
  belongs_to :product
  scope :main, -> { where(main: true) }

    has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    validates_presence_of :image
end
