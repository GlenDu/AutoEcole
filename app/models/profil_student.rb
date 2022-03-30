class ProfilStudent < ApplicationRecord
  belongs_to :student

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true

end
