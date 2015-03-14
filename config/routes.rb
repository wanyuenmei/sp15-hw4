Rails.application.routes.draw do
  get "dogs", to: "pages#dogs"
  get "dogs/new", to: "pages#new"
  get "dogs/:id", to: "pages#show", as: :dog
  post "dogs", to: "pages#create"

  get "users", to: "users#index"
  get "users/new", to: "users#new"
  get "users/:id", to: "users#show", as: :user
  post "users", to: "users#create"
end
