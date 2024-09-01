class Dish < ApplicationRecord
  belongs_to :restaurant

  has_many :tabs
  has_many :tables, through: :tabs
end
