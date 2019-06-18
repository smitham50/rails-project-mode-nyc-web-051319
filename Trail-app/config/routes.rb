Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :trails, only: [:index, :show]

resources :users, only: [:index, :create]

resources :user_trails, only: [:new, :create]

# get '/users', to: "users#index"
get '/signup', to: "users#new", as: "signup"
get '/show/:id', to: "users#show", as: "user"


get '/login', to: "sessions#new", as: "login"
post '/login', to: "sessions#create"
delete "/logout", to: "sessions#destroy"
end
 
