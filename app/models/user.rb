class User < ApplicationRecord
    belongs_to :location
    has_many :pets, dependent: :destroy
    has_many :appointments, through: :pets
    has_many :services, through: :appointments
    has_many :petxperts, through: :appointments
    validates :name, presence: true
    validates :username, presence: true, uniqueness: {case_sensitive: false}
    validates :address, presence: true
    has_secure_password

    # def cap_user_name
    #     self.name.titleize
    # end
end
