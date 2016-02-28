require('minitest/autorun')
require('minitest/rg')
require_relative('../hotel')
require_relative('../guest')
require_relative('../room')


class TestHotel < MiniTest::Test

  def setup

    @guest1 = Guest.new("Steve and Anne Thompson", 2, 3)
    @guest2 = Guest.new("Jim Brew", 1, 5)
    @guest3 = Guest.new("Lady and Lord Smith", 2, 5)
    @guest4 = Guest.new("Jenny Banjo", 1, 3)

    guests = [@guest1, @guest2, @guest3, @guest4]

    @room_1 = Room.new('single', 10)
    @room_2 = Room.new('double', 20)
    @room_3 = Room.new('single', 10)
    @room_4 = Room.new('double', 20)
    @room_5 = Room.new('single', 10)
    @room_6 = Room.new('double', 20)

    hotel_size = [@room_1, @room_2, @room_3, @room_4, @room_5, @room_6]

    @hotel = Hotel.new(hotel_size, guests)

  end

  #####################################################
  #functions for cheking-in the guest 
  #####################################################
  
  def test_new_guest
    assert_equal("Tommy Amsterdam", @hotel.new_guest)
  end

  # def test_push_to_guests
  #     assert_equal(5, @hotel.number_of_rooms_booked)
  # end

  #####################################################
  #functions for the hotel rooms
  #####################################################

  def test_number_of_rooms_is_6
    assert_equal(6, @hotel.number_of_rooms)
  end

  def test_number_of_rooms_booked_is_4
    assert_equal(4, @hotel.number_of_rooms_booked)
  end

  def test_num_rooms_available
    assert_equal(2, @hotel.number_of_rooms_available)
  end

  def test_the_rooms_taken
    assert_equal(["double", "single", "double", "single"], @hotel.the_rooms_taken)
  end

  def test_rooms_occupancy_type
    assert_equal(['single','double','single','double','single','double'], @hotel.rooms_occupancy_type)
  end

  def test_room_availability
    assert_equal(["double", "single"], @hotel.room_availability)
  end

  #####################################################
  #functions for guest information
  #####################################################

  def test_guest_roster
    assert_equal(["Steve and Anne Thompson", "Jim Brew", "Lady and Lord Smith", "Jenny Banjo"], @hotel.guest_roster)
  end

  #####################################################
  #functions for hotel reports
  #####################################################
  
  def test_num_of_guest
    assert_equal(6, @hotel.total_individual_guests)
  end

  def test_hotel_revenue
    assert_equal(60, @hotel.hotel_revenue)
  end

  #####################################################
  #functions for checking_out guests
  #####################################################
  
  def test_remove_guest
    assert_equal(["Jim Brew", "Lady and Lord Smith", "Jenny Banjo"], @hotel.remove_guest)
  end

  def test_checkout
    assert_equal(60, @hotel.hotel_revenue)
    assert_equal(["Jim Brew", "Lady and Lord Smith", "Jenny Banjo"], @hotel.remove_guest)
  end




end