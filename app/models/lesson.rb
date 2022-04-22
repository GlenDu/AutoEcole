class Lesson < ApplicationRecord
  belongs_to :student
  has_many :timeslots
end
