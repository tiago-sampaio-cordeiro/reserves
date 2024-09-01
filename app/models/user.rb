class User < ApplicationRecord
  has_one :favorite
  has_many :restaurants, through: :favorites

  has_many :reservations
  has_many :restaurants, through: :reservations

  validates :name, :email, :phone, presence: true
end
