Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :trails, only: [:index, :show]

# resources :users, only: [:index]

get '/users', to: "users#index"
get '/signup', to: "users#new", as: "signup"

end
