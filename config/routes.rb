Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'home/index'
  resources :products, only:[:index, :show]
  resources :category_products, only:[:show]
  resources :works, only:[:index, :show]
  resources :questions, only:[:create]

  #home страницы
  get '/delivery', to: 'home#delivery'
  get '/about', to: 'home#about'
  get '/contacts', to: 'home#contacts'
  get '/certificates', to: 'home#certificates'

  # как доставка, но в конце кнопка в конструктор
  get '/to-designers', to: 'home#to-designers'
  # как доставка, но в конце блоки "наши работы" и "остались вопросы", в блоке наши работы ошибка на "works.each"
  # если скопировать страницы наших работ
  get '/services', to: 'home#services'
  # конструктор
  get '/constructor', to: 'home#constructor'
end
