require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class TestGuest <MiniTest::Test

  def setup
    @guest1 = Guest.new("Steve and Anne Thompson", 2, 3)
    @guest2 = Guest.new("Jim Brew", 1, 5)
    @guest3 = Guest.new("Lady and Lord Smith", 2, 5)
    @guest4 = Guest.new("Jenny Banjo", 1, 3)
  
  end

  def test_guest_names
    assert_equal("Steve and Anne Thompson",  @guest1.name)
    assert_equal("Jenny Banjo", @guest4.name)
  end

  def test_room_size_needed
    assert_equal(2, @guest1.num_in_party)
    assert_equal(1, @guest4.num_in_party)
  end

  def test_stay_cost
    assert_equal(60, @guest1.stay_cost)
    assert_equal(50, @guest2.stay_cost)
    assert_equal(100, @guest3.stay_cost)
    assert_equal(30, @guest4.stay_cost)
  end
 
  def test_room_needed
    assert_equal('double', @guest1.room_needed)
    assert_equal('single', @guest2.room_needed)
    
  end


end
