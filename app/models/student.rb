class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_one :profil_student , dependent: :destroy

  accepts_nested_attributes_for :profil_student

end
