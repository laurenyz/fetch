class Appointment < ApplicationRecord
    belongs_to :pet
    belongs_to :petxpert
    belongs_to :service
end
