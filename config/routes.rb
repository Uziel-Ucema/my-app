Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'contact', to: 'contact#new'
  post 'contact', to: 'contact#create'
  get 'explore', to: 'explore#index'
  get 'alerts', to: 'alerts#index'
  post '/save_changes', to: 'alerts#save_changes'

  namespace :api do
    post '/new_picture', to: 'alerts#new_picture'
  end  

  resource :session
  resource :registration
  resource :password_reset
  resource :password

  resources :pet_submissions do
    resources :comments, only: [:create]
  end

  resources :pet_submissions do
    member do
      patch 'close'
    end
  end
  
  get 'user_submissions', to: 'pet_submissions#user_submissions'

  # Defines the root path route ("/")
  root 'main#index'
end
