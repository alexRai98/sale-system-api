Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  post 'signup', to: 'users#create'
  resource :user, only: [:show,:create ,:update]

  get 'products', to: 'products#index'
  get 'product/:id', to: 'products#show'
  put 'product/:id', to: 'products#update'
  resource :product, only: :create
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
