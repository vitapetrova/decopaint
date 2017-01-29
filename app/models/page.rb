class Page < ApplicationRecord
  belongs_to :category_page
  extend FriendlyId
  friendly_id :url, :use => :slugged
  validates_presence_of :url, :slug, :title

  rails_admin do
    edit do
      fields :category_page, :title, :url, :slug, :show_menu, :priority
      field :text, :ck_editor
    end
  end

end
