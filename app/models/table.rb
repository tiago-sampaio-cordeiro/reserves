class Table < ApplicationRecord
  has_many :tabs
  has_many :reservations
  has_many :users, through: :reservations
  has_many :restaurants, through: :reservations
end
