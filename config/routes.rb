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

  resources :products

  root to: 'home#index'

end
