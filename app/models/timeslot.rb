class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :calendar
  has_many :time_slots
end
