class User < ApplicationRecord
  has_one :favorite
  has_many :reservations
  has_many :restaurants, through: :reservations
  has_many :table, through: :reservations

  validates :name, :email, :phone, presence: true
end
