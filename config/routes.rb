Rails.application.routes.draw do
  resources :users
  resources :mysteries
  resources :books
  resources :clues
  resources :customers
  resources :new_customers
  resources :hinters
  resources :hints
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
