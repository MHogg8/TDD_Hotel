require('minitest/autorun')
require('minitest/rg')
require_relative('../room')


class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new("single", 10)
    @room2 = Room.new("double", 20)
  end


  def test_type_of_room
    assert_equal("single", @room1.beds)
    assert_equal("double", @room2.beds)
  end

  def test_cost_of_room
      assert_equal(10, @room1.cost)
      assert_equal(20, @room2.cost)
  end

  

end