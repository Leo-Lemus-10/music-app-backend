Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show]
  post "/login", to: "users#login"
  resource :favorites, only: [:index, :create]
  delete 'favorites/:id(.:format)', to: "favorites#destroy"
  resources :artist, only: [:index]
end
