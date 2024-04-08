Rails.application.routes.draw do
  get 'applicants/index'
  get 'applicants/new'
  get 'positions/index'
  get 'positions/new'
  get 'positions/edit'
  get 'positions/show'
  resources :companies, only:[:new, :edit, :create, :update]
  resources :positions
  resources :applicants, only:[:new, :index, :create]
  root "home#index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
