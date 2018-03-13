class FoodType < ActiveRecord::Base
  belongs_to :food
  belongs_to :type
end