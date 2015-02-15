class Pawn

  attr_reader :location

  def initialize(location)
    @location = location
  end

  def move_to(new_location)
    if (new_location > @location) && (new_location.split("").last.to_i <= 8)
      @location = new_location
    end
  end

end