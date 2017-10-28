Rails.application.routes.draw do
  resources :orders
  resources :deliveries
  devise_for :users
  root to: "home#index"

  get 'home/index'
end
