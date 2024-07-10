class Tab < ApplicationRecord
  belongs_to :table
  has_many :tab_dishes
  has_many :dishes, through: :tab_dishes
end
