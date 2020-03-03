Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :services
resources :petxperts
resources :users
resources :locations, only: [:show]

get '/', to: "application#homepage", as: "homepage"

end
