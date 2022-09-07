Rails.application.routes.draw do
  root to: "books#home"
  get "home/about", to: "books#about", as: "about"

  devise_for :users, controllers: { sessions: "sessions", registrations: "registrations" }

  resources :books, only: [:index, :show, :create, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :update, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
