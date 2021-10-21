require_relative '../lib/bike.rb'

class DockingStation
  
  attr_reader :bike

  def release_bike
    if bike == nil
      raise Exception.new "No bikes available"
    else 
      bike
    end
  end

  def dock(bike)
    @bike = bike
  end

end