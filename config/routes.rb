Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :services
resources :petxperts
resources :users
resources :locations, only: [:index, :show]

get '/', to: "application#homepage", as: "homepage"

get '/user/login', to: "users#login", as: "user_login"
get '/petxpert/login', to: "petxperts#login", as: "petxpert_login"

end
