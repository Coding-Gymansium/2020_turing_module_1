class DriveIn
  attr_reader :name, :parked_vehicles
  
  def initialize(name)
    @name = name
    @parked_vehicles = []
	end
	
	def park_vehicle(vehicle)
		@parked_vehicles << vehicle
	end

  def vehicles_with_multiple_passengers
    @parked_vehicles.find_all do |vehicle|
      vehicle.passengers.count >=2
      # binding.pry
    end
  end
  
  def under_18?
    under_age_passenger = []
    @parked_vehicles.find_all do |vehicle|
     vehicle.passengers.map do |passenger|
        if passenger.age < 18
          under_age_passenger << passenger
        end
      end
    end
    under_age_passenger
	end
end