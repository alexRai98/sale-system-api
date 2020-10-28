Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  post 'signup', to: 'users#create'
  resource :user, only: [:show,:create ,:update]


  resources :businesses , only: [:index] do
    resources :products, only: [:index, :show,:create, :update]
  end
end
