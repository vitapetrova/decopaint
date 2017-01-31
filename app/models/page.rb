class Page < ApplicationRecord
  scope :show, ->{ where(show_menu: true) }
  scope :pages_priority,  ->{ order(:priority) }

  belongs_to :category_page
  extend FriendlyId
  friendly_id :url, :use => :slugged
  validates_presence_of :url, :slug, :title

  rails_admin do
    list do
      fields :id, :title, :category_page, :url, :show_menu, :priority
    end

    edit do
      fields :title, :category_page, :url, :slug, :show_menu, :priority
      field :text, :ck_editor
    end
  end

end
