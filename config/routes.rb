Rails.application.routes.draw do
  root to: "books#home"
  get "home/about", to: "books#about", as: "about"

  devise_for :users

  resources :books, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
