Rails.application.routes.draw do
  resources :bookmarks
  resources :images
  resources :users, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/login", to: "authentication#login"
end
