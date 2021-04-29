Rails.application.routes.draw do
  #Admin dashboard route
  namespace :admin do
    resources :orders
    resources :products
    resources :promotions

    root to: "orders#index"
  end
  
  #API route
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
    end
  end

  get "create_order_product", to: "orders_products#new"
  post "create_order_product", to: "orders_products#create"

  resources :products
  resources :orders


  root to: 'orders#index'

end
