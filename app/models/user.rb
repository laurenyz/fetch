class User < ApplicationRecord
    belongs_to :location
    has_many :pets
    has_many :appointments, through: :pets
    has_many :services, through: :appointments
    has_many :petxperts, through: :appointments
    validates :name, presence: true
    validates :username, presence: true, uniqueness: {case_sensitive: false}
    validates :address, presence: true
end
