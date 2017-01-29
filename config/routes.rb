Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'home/index'
  resources :products, only:[:index, :show] do
    post 'select', on: :member
  end
  resources :category_products, only:[:show]
  resources :works, only:[:index, :show]
  resources :questions, only:[:create]
  resources :orders, only:[:create]
  # статичные страницы
  resources :page, only:[:show]

  #home страницы
  get '/delivery', to: 'home#delivery'
  get '/about', to: 'home#about'
  get '/contacts', to: 'home#contacts'
  get '/certificates', to: 'home#certificates'
  get '/to-designers', to: 'home#to_designers'

# все статичные сервисы?
  get '/services', to: 'home#services'

  # конструктор. Большая таска
  get '/constructor', to: 'home#constructor'
end
