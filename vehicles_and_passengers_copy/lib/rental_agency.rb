class RentalAgency
  attr_reader :name, :fleet
  
	def initialize(name)
    @name = name
    @fleet = [ ]
	end
	
  def fleet_full?
    fleet.count >= 4		
	end

	def minimum_driver_age
		18
	end

  def add_vehicle(vehicle)
    @fleet << vehicle
  end
end