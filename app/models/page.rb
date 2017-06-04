class Page < ApplicationRecord
  scope :show, ->{ where(show_menu: true) }
  scope :pages_priority,  ->{ order(:priority) }

  belongs_to :category_page
  extend FriendlyId
  friendly_id :url, :use => :slugged
  validates_presence_of :url, :slug, :title
  has_attached_file :image
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  rails_admin do
    list do
      fields :id, :title, :category_page, :url, :show_menu, :priority
    end

    edit do
      fields :title, :category_page
      field :image
      fields :url, :slug, :show_menu, :priority, :seo_title, :seo_description, :preview_text
      field :text, :ck_editor
    end
  end

end
