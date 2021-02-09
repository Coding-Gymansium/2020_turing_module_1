require "minitest/autorun"
require "minitest/pride"
require "./lib/pet"
require "./lib/customer"

require "pry"

class CustomerTest < MiniTest::Test
  def test_it_exists
    joel = Customer.new("Joel", 2)
    assert_instance_of Customer, joel
  end

  def test_it_has_a_name
    joel = Customer.new("Joel", 2)
    
    assert_equal "Joel", joel.name
  end

  def test_it_has_an_id
    joel = Customer.new("Joel", 2)
    
    assert_equal 2, joel.id
  end

  def test_it_starts_without_pets
    joel = Customer.new("Joel", 2)
    
    assert_equal [], joel.pets
  end

  def test_it_can_have_pets
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

    joel.adopt(samson)
    joel.adopt(lucy)
    
    assert_equal [samson, lucy], joel.pets
  end

  def test_it_starts_without_outstanding_balance
    joel = Customer.new("Joel", 2)
    
    assert_equal 0, joel.outstanding_balance
  end

  def test_it_can_have_an_outstanding_balance
    joel = Customer.new("Joel", 2)
    
    joel.charge(15)
    joel.charge(7)

    assert_equal 22, joel.outstanding_balance
  end
end