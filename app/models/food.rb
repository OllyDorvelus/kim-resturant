class Food < ActiveRecord::Base
  has_many :food_types
  has_many :types, through: :food_types
  validates :name, presence: true, length: { minimum: 3, maximum: 200}
  validates :description, presence: true, length: { minimum: 10, maximum: 5000}
  validates :price, presence: true, numericality: :only_decimal
  validates :discount, presence: true, numericality: :only_integer

end