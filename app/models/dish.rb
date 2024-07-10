class Dish < ApplicationRecord
  has_many :tab_dishes
  has_many :tabs, through: :tab_dishes

end
