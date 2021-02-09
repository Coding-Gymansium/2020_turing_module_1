require "./test/test_helper"

class RentalAgencyTest < Minitest::Test 

  def test_it_exists
    rental_agency = RentalAgency.new("My Agency")
    assert_instance_of RentalAgency, rental_agency
  end

  def test_it_has_attributes
    rental_agency = RentalAgency.new("My Agency")

    assert_equal "My Agency" , rental_agency.name
    assert_equal false, rental_agency.fleet_full?
    assert_equal 18, rental_agency.minimum_driver_age
  end

  def test_it_has_vehicles_in_the_fleet
    rental_agency = RentalAgency.new("My Agency")
    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2002", "Toyota", "Camry")
    vehicle3 = Vehicle.new("2020", "Porsche", "Macan")

    rental_agency.add_vehicle(vehicle1)
    rental_agency.add_vehicle(vehicle2)
    rental_agency.add_vehicle(vehicle3)

    assert_equal [vehicle1, vehicle2, vehicle3], rental_agency.fleet
  end

  def test_vehicles_have_passengers
    rental_agency = RentalAgency.new("My Agency")
    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2002", "Toyota", "Camry")
    vehicle3 = Vehicle.new("2020", "Porsche", "Macan")

    rental_agency.add_vehicle(vehicle1)
    rental_agency.add_vehicle(vehicle2)
    rental_agency.add_vehicle(vehicle3)

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    august = Passenger.new({"name" => "August", "age" => 20})

    vehicle1.add_passenger(charlie)    
    vehicle2.add_passenger(jude)    
    vehicle3.add_passenger(taylor)    
    vehicle3.add_passenger(august)    

    assert_equal [august, taylor], vehicle3.passengers
  end
end