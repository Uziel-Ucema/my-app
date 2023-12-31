Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'contact', to: 'contact#new'
  post 'contact', to: 'contact#create'
  get 'explore', to: 'explore#index'
  get "alerts", to: "alerts#index"
  post '/save_changes', to: 'alerts#save_changes'


  resource :session
  resource :registration
  resource :password_reset
  resource :password
  resources :pet_submissions, only: [:new, :create, :index]


  # Defines the root path route ("/")
  root "main#index"
end
