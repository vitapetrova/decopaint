class HomePage < ApplicationRecord
  rails_admin do
    edit do
      field :logo_description
      field :block1, :ck_editor
      field :block2, :ck_editor
      field :block3, :ck_editor
      field :block_airplane, :ck_editor
    end
  end
end
