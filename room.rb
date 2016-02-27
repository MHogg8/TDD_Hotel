
class Room

attr_reader :beds, :cost

  def initialize(type_of_room, daily_cost)
    @beds = type_of_room
    @cost = daily_cost
  end
  
 

end