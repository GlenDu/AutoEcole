class Timeslot < ApplicationRecord
  belongs_to :teacher
  belongs_to :calendar
  #belongs_to :lessons
end
