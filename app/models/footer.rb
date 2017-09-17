class Footer < ApplicationRecord
  rails_admin do
    edit do
      field :central_block, :ck_editor
    end
  end
end
