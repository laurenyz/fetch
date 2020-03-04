Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :services
resources :petxperts
resources :users
resources :pets
resources :locations, only: [:index, :show]
resources :appointments, except: [:index, :create, :update]


get '/', to: "application#homepage", as: "homepage"

get '/user/login', to: "sessions#new_user_login", as: "user_login"
post '/user/login', to: "sessions#create_user_login"
get '/petxpert/login', to: "sessions#new_petxpert_login", as: "petxpert_login"
post '/petxpert/login', to: "sessions#create_petxpert_login"

get '/user/logout/', to: "sessions#logout", as: "logout"

post '/appointments/add_petxpert', to: "appointments#create", as: "create_appointment"
post '/appointments', to: "appointments#create_with_petxpert", as: "create_with_petxpert"
post '/appointments/:id/edit_petxpert', to: "appointments#update", as: "update_appointment"
patch '/appointments', to: "appointments#update_with_petxpert", as: "update_with_petxpert"


end
