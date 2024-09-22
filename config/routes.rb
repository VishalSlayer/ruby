Rails.application.routes.draw do
  #devise_for :users
  resources :friends
  #get "home/index"
  get 'home/about'
  #root 'home#index'
  root 'friends#index'
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
