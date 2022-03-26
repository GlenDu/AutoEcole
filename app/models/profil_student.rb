class ProfilStudent < ApplicationRecord
  belongs_to :student

  validates :first_name, presence: true

end
