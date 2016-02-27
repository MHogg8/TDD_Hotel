
class Hotel

  attr_reader :num_of_rooms
  attr_writer :num_of_guests

  def initialize(hotel_size, number_of_guests)
    @num_of_rooms = hotel_size
    @num_of_guests = number_of_guests
    @rooms_taken = []
    @rooms_at_hotel = []
    @rooms_free = []
  end


def number_of_rooms     #this returns the number of rooms in the hotel
  return @num_of_rooms.count
end


def number_of_rooms_booked  #this returns the number of rooms in the hotel booked
  return @num_of_guests.count
end


def number_of_rooms_available
  number_of_rooms - number_of_rooms_booked
end


def rooms_occupancy_type
  for rooms in @num_of_rooms
    @rooms_at_hotel << rooms.beds
  end
  return @rooms_at_hotel
end

# The above function creates an array with the number of rooms. 

def guest_roster #returns string of names of guests
  guest_roster = []
   for guest in @num_of_guests
    guest_roster<<guest.name
   end
  return guest_roster
end 

#above and below can be comn=bine to return a full roster and detail name list of guests. 

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
  return money_earned
    end
  end
end


def remove_guest # finally deletes name from hotel. 
  for guest in @num_of_guests
    if guest.name == "Steve and Anne Thompson" #needs to be gets.chomp
        @num_of_guests.delete(guest)
      return guest_roster 
    end
  end  
  return  "Sorry you haven't checked out yet, please see one of our friendly sales assitants. "
end

def checkout
  for guest in @num_of_guests
    if guest.name == "Steve and Anne Thompson"#needs to be gets.chomp
      return hotel_revenue remove_guest
    end
  end
end

end


