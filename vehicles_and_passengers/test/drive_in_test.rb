require "./test/test_helper"

class DriveInTest < Minitest::Test 

  def test_it_exists
    drive_in = DriveIn.new("My Drive-In")
    assert_instance_of DriveIn, drive_in
  end

  def test_it_has_a_name
    drive_in = DriveIn.new("My Drive-In")
    assert_equal "My Drive-In", drive_in.name
  end

  def test_it_can_have_vehicles_parked
    drive_in = DriveIn.new("My Drive-In")

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2015", "Toyota", "Camry")
    vehicle3 = Vehicle.new("2019", "Porsche", "Macan")

    drive_in.park_vehicle(vehicle1)
    drive_in.park_vehicle(vehicle2)
    drive_in.park_vehicle(vehicle3)

    assert_equal 3, drive_in.parked_vehicles.count

  end

  def test_it_can_list_vehicles_with_multiple_passengers
    drive_in = DriveIn.new("My Drive-In")

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2015", "Toyota", "Camry")
    vehicle3 = Vehicle.new("2019", "Porsche", "Macan")

    drive_in.park_vehicle(vehicle1)
    drive_in.park_vehicle(vehicle2)
    drive_in.park_vehicle(vehicle3)

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    august = Passenger.new({"name" => "August", "age" => 20})  
    mary = Passenger.new({"name" => "Mary", "age" => 30})  

    vehicle1.add_passenger(charlie)

    vehicle2.add_passenger(jude)    
    vehicle2.add_passenger(mary) 

    vehicle3.add_passenger(taylor)
    vehicle3.add_passenger(august)

    assert_equal [vehicle2, vehicle3], drive_in.vehicles_with_multiple_passengers

  end

  def test_it_can_list_passengers_with_under_18_passengers
    drive_in = DriveIn.new("My Drive-In")

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2015", "Toyota", "Camry")
    vehicle3 = Vehicle.new("2019", "Porsche", "Macan")

    drive_in.park_vehicle(vehicle1)
    drive_in.park_vehicle(vehicle2)
    drive_in.park_vehicle(vehicle3)

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    jude = Passenger.new({"name" => "Jude", "age" => 20})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    juan = Passenger.new({"name" => "Juan", "age" => 12})  
    august = Passenger.new({"name" => "August", "age" => 20})  
    mary = Passenger.new({"name" => "Mary", "age" => 30})  

    vehicle1.add_passenger(charlie)

    vehicle2.add_passenger(jude)    
    vehicle2.add_passenger(mary) 
    vehicle2.add_passenger(juan) 

    vehicle3.add_passenger(taylor)
    vehicle3.add_passenger(august)

    assert_equal [juan, taylor], drive_in.under_18?

  end
end