Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about", to: "about#index"
  get "explore", to: "explore#index"
  get "alerts", to: "alerts#index"
  post '/save_changes', to: 'alerts#save_changes'


  resource :session
  resource :registration
  resource :password_reset
  resource :password

  # Defines the root path route ("/")
  root "main#index"
end
