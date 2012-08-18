FundManager::Application.routes.draw do
  root :to => 'content#index'

  resources :income_records
  resources :expense_records

  # Omniauth
  match "/auth/:provider/callback", to: "sessions#create"

  # Authentication
  resources :password_resets
  resources :sessions
  resources :users
  get 'login', to: 'sessions#new', as: 'login'
  get 'signup', to: 'users#new', as: 'signup'
  delete 'logout', to: 'sessions#destroy', as: 'logout'
end
