class Question < ApplicationRecord
  validates_presence_of :phone, presence: true, message: 'Поле телефон не может быть пустым'
  validates_presence_of :message, presence: true, message: 'Поле сообщение не может быть пустым'
end
