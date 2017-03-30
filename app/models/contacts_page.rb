class ContactsPage < ApplicationRecord
  rails_admin do
    edit do
      field :phone1, :ck_editor
      field :phone2, :ck_editor
      field :address, :ck_editor
    end
  end
end
