require './test/test_helper'

class BoatTest < MiniTest::Test 

  def test_it_exists
    kayak = Boat.new(:kayak, 20) 
    assert_instance_of Boat, kayak 
  end

  def test_it_has_type
    kayak = Boat.new(:kayak, 20) 

    assert_equal :kayak, kayak.type
  end

  def test_it_has_price_per_hour
    kayak = Boat.new(:kayak, 20) 
    
    assert_equal 20, kayak.price_per_hour
  end

  def test_it_has_hours_rented
    kayak = Boat.new(:kayak, 20) 
    
    assert_equal 0, kayak.hours_rented 
  end

end