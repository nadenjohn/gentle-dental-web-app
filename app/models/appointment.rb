class Appointment < ApplicationRecord
  belongs_to :dentist
  belongs_to :user
end
