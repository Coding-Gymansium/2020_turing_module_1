require "minitest/autorun"
require "minitest/pride"
require "./lib/pet"
require "pry"

class PetTest < MiniTest::Test
  def test_it_exists
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    assert_instance_of Pet, samson
  end

  def test_it_has_a_name
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal "Samson", samson.name
  end

  def test_it_has_a_type
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal :dog, samson.type
  end

  def test_it_has_an_age
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal 3, samson.age
  end

  def test_it_starts_not_fed
    samson = Pet.new({name: "Samson", type: :dog, age: 3})

    assert_equal false, samson.fed?
  end

  def test_it_can_be_fed
    samson = Pet.new({name: "Samson", type: :dog, age: 3})
    samson.feed
    assert_equal true, samson.fed?
  end

end