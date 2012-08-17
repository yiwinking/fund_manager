FundManager::Application.routes.draw do
  root :to => 'content#index'

  # Omniauth
  match "/auth/:provider/callback", to: "sessions#create"
end
