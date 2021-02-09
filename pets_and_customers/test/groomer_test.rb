require "minitest/autorun"
require "minitest/pride"
require "./lib/pet"
require "./lib/customer"
require "./lib/groomer"

require "pry"

class GroomerTest < MiniTest::Test
  def test_it_exists
    groomer = Groomer.new({name: "Marty"})
    assert_instance_of Groomer, groomer
  end

  def test_it_has_a_name
    groomer = Groomer.new({name: "Marty"})
    
    assert_equal "Marty", groomer.name
  end

  def test_it_can_customers
    groomer = Groomer.new({name: "Marty"})
    
    joel = Customer.new("Joel", 2)
    groomer.add_customer(joel)
    
    assert_equal [joel], groomer.customers
  end

  def test_groomer_customers_can_have_pets
    groomer = Groomer.new({name: "Marty"})
    joel = Customer.new("Joel", 2)
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})

    joel.adopt(samson)
    joel.adopt(lucy)
    groomer.add_customer(joel)
    
    assert_equal [samson, lucy], groomer.customer_pets(joel)
  end

  def test_groomer_can_find_customers_with_outstanding_balance
    groomer = Groomer.new({name: "Marty"})
    joel = Customer.new("Joel", 2)
    daniel = Customer.new("Daniel", 3)
    dani = Customer.new("Dani", 4)

    
    groomer.add_customer(joel)
    groomer.add_customer(daniel)

    joel.charge(50)
    daniel.charge(70)
  
    assert_equal [joel, daniel], groomer.customer_with_balances
  end

  def test_groomer_can_count_the_number_of_pets_of_a_given_type
    groomer = Groomer.new({name: "Marty"})
    joel = Customer.new("Joel", 2)
    daniel = Customer.new("Daniel", 3)

    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    fido = Pet.new({name: "Fido", type: :dog, age: 5})

    joel.adopt(samson)
    joel.adopt(lucy)
    daniel.adopt(fido)

    groomer.add_customer(joel)
    groomer.add_customer(daniel)

    assert_equal 2, groomer.customer_pets_by_type(:dog)
    assert_equal 1, groomer.customer_pets_by_type(:cat)
  end

  def test_groomer_can_information_on_charges
    groomer = Groomer.new({name: "Marty"})
    joel = Customer.new("Joel", 2)
    daniel = Customer.new("Daniel", 3)
    dani = Customer.new("Dani", 4)

    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    fido = Pet.new({name: "Fido", type: :dog, age: 5})

    joel.adopt(samson)
    joel.adopt(lucy)
    daniel.adopt(fido)

    groomer.add_customer(joel)
    groomer.add_customer(daniel)
    
    # binding.pry
    expected = {:customer=>"Joel", :pet=>"Samson", :service=>{:name=>"Nails", :charge=>35}}
    assert_equal expected, groomer.generate_invoice(joel, samson, :nails)
    
  end
  
end

