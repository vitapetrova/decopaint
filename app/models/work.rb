class Work < ApplicationRecord
  belongs_to :category_work
  has_many :work_images

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_presence_of :image

  rails_admin do
    edit do
      fields :title, :show_menu, :image, :category_work
      field :text_field, :ck_editor
    end
  end
end
