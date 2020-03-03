Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :services
resources :petxperts
resources :users
resources :pets
resources :petxpert_services, except: [:index, :show]
resources :locations, only: [:index, :show]
resources :appointments, except: [:index]


get '/', to: "application#homepage", as: "homepage"
get '/user/login', to: "sessions#new", as: "user_login"
get '/petxpert/login', to: "petxperts#login", as: "petxpert_login"
post '/user/login', to: "sessions#create"


end
