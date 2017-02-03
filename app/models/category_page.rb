class CategoryPage < ApplicationRecord
  scope :services, ->{ find_by(title: 'Услуги') }
  scope :static_pages, ->{ find_by(title: 'Статичные страницы') }
  scope :blog, ->{ find_by(title: 'Блог') }
  has_many :pages
end
