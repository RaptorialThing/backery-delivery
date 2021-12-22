Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "deliveries#index"
  resources :items
  resources :deliveries
  resources :delivery_courier_bids
  resources :wharehousings
end
