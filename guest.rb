class Guest

  attr_reader :name, :num_in_party, :stay

  def initialize(name, num_in_party, stay_length)
    @name = name
    @num_in_party = num_in_party
    @stay = stay_length
  end


  def stay_cost #returns the cost of the 
    if @num_in_party >= 2
      cost =  @stay * 20
    else @num_in_party
        cost =  @stay * 10
    end
    return cost
  end


  def room_needed
    if num_in_party > 1
      room_needed = 'double'
    else
      room_needed = 'single'
    end
  end

end