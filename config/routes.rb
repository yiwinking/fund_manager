FundManager::Application.routes.draw do
  root :to => 'billing_records#index'

  resources :billing_records do
    collection { post :search, to: 'billing_records#index' }
  end

  # Omniauth
  match "/auth/:provider/callback", to: "sessions#create"

  # Authentication
  resources :password_resets
  resources :sessions
  resources :users
  get 'login', to: 'sessions#new', as: :login
  get 'signup', to: 'users#new', as: :signup
  delete 'logout', to: 'sessions#destroy', as: :logout
end
