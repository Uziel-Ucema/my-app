Rails.application.routes.draw do
  get 'images/show'
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
  resources :alerts

  resources :pet_submissions do
    resources :comments, only: [:create]
  end

  resources :pet_submissions do
    member do
      patch 'close'
    end
  end

  get 'user_submissions', to: 'pet_submissions#user_submissions'
  get 'breeds/:breed/:image_name', to: 'images#show', as: 'breed_image'
  get 'explore/image', to: 'images#show', as: :explore_image

  root 'main#index'
end
