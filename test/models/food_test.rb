require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  
  def setup
    @food = Food.new(name: "Gourmet", price: 12.30, description: "A great juicy meal")
  end
  
  test "is food valid" do 
    assert @food.valid?
  end
  
  test "is name present" do
    @food.name = " "
    assert_not @food.valid?
  end
  
  test "name can't be short" do
    @food.name = "aa"
    assert_not @food.valid?
  end
  
  test "name can't be too long" do
    @food.name = "a" * 1000
    assert_not @food.valid?
  end
  
  test "is description present" do
    @food.description = " "
    assert_not @food.valid?
  end
  
  test "description can't be short" do
    @food.description = "aa"
    assert_not @food.valid?
  end
  
  test "description can't be too long" do
    @food.description = "a" * 10000
    assert_not @food.valid?
  end
  
  test "default discount to 100" do
    assert @food.discount = 100
  end
  
  test "is price present" do
    @food.price = nil
    assert_not @food.valid?
  end
  
  test "price can only be integer/decimal" do
    @food.price = "I'm a string"
    assert_not @food.valid?
  end
  
  test "discount can only be integer" do
    @food.discount = "I'm a string"
    assert_not @food.valid?
  end
  
end