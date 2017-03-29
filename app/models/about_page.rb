class AboutPage < ApplicationRecord
    rails_admin do
    edit do
      field :main_text, :ck_editor
      field :block1, :ck_editor
      field :block2, :ck_editor
      field :block3, :ck_editor
      field :block4, :ck_editor
      field :block5, :ck_editor
      field :block6, :ck_editor
    end
  end
end
