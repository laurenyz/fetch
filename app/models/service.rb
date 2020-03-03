class Service < ApplicationRecord
    has_many :appointments
    has_many :pets, through: :appointments
    has_many :users, through: :pets
    has_many :petxpert_services
    has_many :petxperts, through: :petxpert_services
    has_many :locations, through: :petxperts
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
end
