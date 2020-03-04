class Appointment < ApplicationRecord
    belongs_to :pet
    belongs_to :petxpert, optional: true
    belongs_to :service

    def written_date
        self.appt_time.strftime("%B %e, %Y")
    end

    def written_time
        "#{self.appt_time.strftime('%l:%M %p')}"
    end
end
