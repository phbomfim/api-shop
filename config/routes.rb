Rails.application.routes.draw do
  #API route
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders
    end
  end

  get "create_record", to: "records#new"
  post "create_record", to: "records#create"

  resources :products
  resources :orders

  root to: 'orders#index'

end
