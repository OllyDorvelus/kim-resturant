class Type < ActiveRecord::Base
  before_save { self.name = name.downcase }
  has_many :food_types
  has_many :foods, through: :food_types
  validates :name, presence: true, length: { minimum: 3, maximum: 100}
end