class Petxpert < ApplicationRecord
    belongs_to :location
    has_many :petxpert_services
    has_many :services, through: :petxpert_services
    has_many :appointments
    has_many :pets, through: :appointments
    has_many :users, through: :pets
    validates :name, presence: true
    validates :username, presence: true
    validates :description, presence: true, uniqueness: {case_sensitive: false}
end
