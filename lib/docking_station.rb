require "bike"

class DockingStation
  attr_accessor :bikes
  def initialize
    @bikes = []
  end

  def release_bike
      @bikes.empty? ? (fail "No bike") : @bikes.pop
  end

  def dock(bike)
    @bikes.length >= 20 ? (fail "Dock full") : (@bikes << bike)
  end
end


