require "./test/test_helper"

class PassengerTest < MiniTest::Test
  def test_it_exists
    passenger = Passenger.new({"name" => "Pasajero", "age" => 18})
    assert_instance_of Passenger, passenger
  end

  def test_it_has_attributes
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

    assert_equal "Charlie", charlie.name
    assert_equal 18, charlie.age
    assert_equal "Taylor", taylor.name
    assert_equal 12, taylor.age
  end

  def test_it_whether_it_is_an_adult
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

    assert_equal true, charlie.adult?
    assert_equal false, taylor.adult?
  end

  def test_it_whether_it_is_a_driver
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})    

    charlie.drive

    assert_equal true, charlie.driver?
    assert_equal false, taylor.driver?
  end
end