Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'home/index'
  resources :products, only:[:show]
  resources :category_products, only:[:show]
end
