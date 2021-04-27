Rails.application.routes.draw do
  namespace :admin do
      resources :orders
      resources :products
      resources :promotions

      root to: "orders#index"
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
