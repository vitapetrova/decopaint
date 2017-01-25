Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'home/index'
  resources :products, only:[:index, :show]
  resources :category_products, only:[:show]
  resources :works, only:[:index, :show]

  #временные страницы
  get '/delivery', to: 'home#delivery'
end
