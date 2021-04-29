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
    end
  end

  get "create_order", to: "orders#new"
  post "create_order", to: "orders#create"

  resources :products
  resources :orders

  root to: 'orders#index'

end
