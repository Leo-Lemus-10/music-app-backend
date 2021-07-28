Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  post "/login", to: "users#login"
  resource :favorites, only: [:index, :create, :destroy]
  resources :artist, only: [:index]
end
