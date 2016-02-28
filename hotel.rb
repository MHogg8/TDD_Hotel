require_relative('guest')
require_relative('room')

class Hotel

  attr_reader :num_of_rooms
  attr_writer :num_of_guests

  def initialize(hotel_size, number_of_guests)
    @num_of_rooms = hotel_size
    @num_of_guests = number_of_guests
    @total_revenue = []
    
  end
######################################################
#functions for cheking-in the guest 
######################################################

def new_guest #creates a new guest
  new_arrival = Guest.new("Tommy Amsterdam", 1, 3)
  return new_arrival.name
end

def push_to_guests
  @num_of_guests << new_guest
  return @num_of_guests.count
end

######################################################
#functions for the hotel rooms
######################################################

def number_of_rooms     #this returns the number of rooms in the hotel
  return @num_of_rooms.count
end

def number_of_rooms_booked  #this returns the number of rooms in the hotel booked
  return @num_of_guests.count
end

def number_of_rooms_available #num of rooms available
  number_of_rooms - number_of_rooms_booked
end

def the_rooms_taken #returns stthe current rooms taken
  rooms_taken = []
   for guest in @num_of_guests
    rooms_taken<<guest.room_needed
   end
  return rooms_taken 
end 

def rooms_occupancy_type
  rooms_at_hotel = []
  for rooms in @num_of_rooms
    rooms_at_hotel << rooms.beds
  end
  return rooms_at_hotel
end # The function creates an array with the number of rooms. 

def room_availability  #returns type rooms available
  rooms_occupancy_type.sort & the_rooms_taken.sort
end

######################################################
#functions for guest information
######################################################
def guest_roster #returns string of names of guests
  guest_roster = []
   for guest in @num_of_guests
    guest_roster<<guest.name
   end
  return guest_roster
end 

######################################################
#functions for hotel reports
######################################################

def total_individual_guests #returns a total of guests
  total = 0
  for guest in @num_of_guests
    total += guest.num_in_party
  end
  return total
end

def hotel_revenue   #cost of stay at hotel
  money_earned = 0  #tells the variable expect fixnum
  for guest in @num_of_guests
    if guest.name == "Steve and Anne Thompson"#needs to be gets.chomp
      money_earned += guest.stay_cost 
      @total_revenue << money_earned
    return @total_revenue
    end
  end
end

# def total_revenue
#   return @total_revenue
# end

######################################################
#functions for checking_out guests
######################################################

def remove_guest # finally deletes name from hotel. 
  for guest in @num_of_guests
    if guest.name == "Steve and Anne Thompson" #needs to be gets.chomp
        @num_of_guests.delete(guest)
      return guest_roster 
    end
  end  
  return  "Sorry you haven't checked out yet, please see one of our friendly sales assitants. "
end

def checkout #combine all features in the checkout
hotel_revenue 

remove_guest

end

end


