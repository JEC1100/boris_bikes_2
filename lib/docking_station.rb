require "bike"

class DockingStation
  attr_reader :bike

    def release_bike
        @bike ? @bike : (fail "No bike")
    end

    def dock(bike)
      @bike ? (fail "Dock full"): @bike = bike
    end
end


