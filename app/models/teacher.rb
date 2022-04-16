class Teacher < ApplicationRecord
  belongs_to :user
  has_many :calendars
  has_many :timeslots
end
