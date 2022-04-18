class Calendar < ApplicationRecord
  belongs_to :teacher
  has_many :timeslots
end
