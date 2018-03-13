require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  def setup
    @type = Type.new(name: "Appetizer")
  end
  
  test "name can't be empty" do
    @type.name = " "
    assert_not @type.valid?
  end
  
  test "name can't be short" do 
    @type.name = "ok"
    assert_not @type.valid?
  end
  
  test "name can't be too long" do
    @type.name = "a" * 1000
    assert_not @type.valid?
  end
 
end