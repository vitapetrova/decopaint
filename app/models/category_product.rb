class CategoryProduct < ApplicationRecord
  has_many :products

  rails_admin do
    edit do
      fields :title, :show_menu
      field :description, :ck_editor
      field :description2, :ck_editor
    end
  end

end
