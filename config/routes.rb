Rails.application.routes.draw do
  namespace :admin do
      resources :orders
      resources :products
      resources :promotions

      root to: "orders#index"
    end
  
  root to: 'home#index'

end
