Rails.application.routes.draw do
  resources :user_hints, only: [:index, :create]
  resources :user_clues, only: [:index, :create]
  resources :notes, only: [:index, :create, :update, :destroy, :show]
  resources :users, only: [:index, :create, :update, :destroy, :show]
  # resources :books, only: [:index]
  # resources :clues, only: [:index]
  # resources :hinters, only: [:index]
  # resources :hints, only: [:index]
  # resources :mysteries
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/authorized_user", to: "users#show"
  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"
  delete "/start_over", to: "users#destroy_all"
end
