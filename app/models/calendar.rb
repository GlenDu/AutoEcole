class Calendar < ApplicationRecord
  has_many :timeslots
  belongs_to :teacher

  accepts_nested_attributes_for :timeslots
end
