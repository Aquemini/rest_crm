Rails.application.routes.draw do

  resources :shipments
  resources :order_details
  resources :orders
  resources :products
  # get '/users/', to: 'users#index'
  # match "*path", to: "application#page_not_found", via: :all

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # render 12452


end
