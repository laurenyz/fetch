class Pet < ApplicationRecord
    belongs_to :user
    has_many :appointments
    has_many :petxperts, through: :appointments
    has_many :services, through: :appointments
    validates :name, presence: true
    validates :species, presence: true
    validates :age, presence: true
end
