class Favorite < ApplicationRecord
  belongs_to :user
  has_many :favorite_restaurants
  has_many :restaurants, through: :favorite_restaurants
end
