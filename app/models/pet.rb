class Pet < ApplicationRecord
    belongs_to :user
    has_many :appointments
    has_many :petxperts, through: :appointments
    has_many :services, through: :appointments
end
