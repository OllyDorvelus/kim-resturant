class Food < ActiveRecord::Base
  has_many :food_types
  has_many :types, through: :food_types
  validates :name, presence: true, length: { minimum: 3, maximum: 200}
  validates :description, presence: true, length: { minimum: 10, maximum: 5000}
  validates :price, presence: true, numericality: :only_decimal
  validates :discount, presence: true, numericality: :only_integer
  mount_uploader :picture, PictureUploader
  validate :picture_size
  
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
  
  def print_price
    price = '%.2f' % self.price
    "$#{price}"
  end

end