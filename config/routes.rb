Rails.application.routes.draw do
  resources :companies, only: [:new, :edit, :create, :update]
  resources :positions
  resources :applicants, only: [:new, :index, :create]
  root to: "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
