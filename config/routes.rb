Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :services
resources :petxperts
resources :users
resources :pets
resources :petxpert_services, except: [:index, :show]
resources :locations, only: [:index, :show]
resources :appointments, except: [:index, :create]


get '/', to: "application#homepage", as: "homepage"
get '/user/login', to: "sessions#new", as: "user_login"
get '/petxpert/login', to: "petxperts#login", as: "petxpert_login"
post '/user/login', to: "sessions#create"
post '/appointments/add_petxpert', to: "appointments#create", as: "create_appointment"
post '/appointments', to: "appointments#add_petxpert", as: "add_petxpert"


end
