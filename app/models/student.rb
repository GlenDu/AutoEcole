class Student < ApplicationRecord
  belongs_to :user
  has_many :lessons

  has_many :timeslots, through: :lessons
end
