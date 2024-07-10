class Restaurant < ApplicationRecord
  has_many :favorite_restaurants
  has_many :favorites, through: :favorite_restaurants
  has_many :reservations
  has_many :users, through: :reservations
  has_many :tables, through: :reservations
end
