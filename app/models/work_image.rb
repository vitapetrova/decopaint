class WorkImage < ApplicationRecord
  belongs_to :work

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :image
end
