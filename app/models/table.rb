class Table < ApplicationRecord
  belongs_to :restaurant

  has_many :tabs
  has_many :dishes, through: :tabs
end
