Rails.application.routes.draw do
  #API route
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
    end
  end

  resources :records
  resources :products
  resources :orders
  resources :promotions

  root to: 'orders#index'

end
