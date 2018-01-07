class Menu < ApplicationRecord
  scope :current_menu, ->{ where(current: true) }
end
