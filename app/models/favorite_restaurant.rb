class FavoriteRestaurant < ApplicationRecord
  belongs_to :favorite
  belongs_to :restaurant
end
