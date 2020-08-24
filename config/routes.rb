Rails.application.routes.draw do
  post 'login', to: 'sessions#create'
  post 'logout', to: 'sessions#destroy'
  post 'signup', to: 'users#create'
  resource :user, only: [:show,:create ,:update]


  resources :businesses , only: [:index] do
    resources :products, only: [:index, :show,:create, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
