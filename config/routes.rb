Rails.application.routes.draw do

  # match "*path", to: "application#page_not_found", via: :all

  resources :users do
    resources :orders
    resources :shipments
    resources :order_details
    # resources :products
  end

  resources :orders
  resources :shipments
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
