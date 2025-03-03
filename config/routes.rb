Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :registration, only: %i[new create]
  resources :products
  resource :cart, only: [:show]
  resources :cart_items, only: [:create, :update, :destroy] # Added `update`

  root "products#index"
end
