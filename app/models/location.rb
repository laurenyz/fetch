class Location < ApplicationRecord
    has_many :users
    has_many :pets, through: :users
    has_many :petxperts
    has_many :petxpert_services, through: :petxperts
    has_many :services, through: :petxpert_services
    has_many :appointments, through: :petxperts
  
end
