class Restaurant < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites, source: :user

  has_many :reservations
  has_many :users, through: :reservations

  has_many :tables
  has_many :dishes
end
