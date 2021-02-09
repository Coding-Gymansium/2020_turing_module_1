gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'
require "pry"
class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
# binding.pry
    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    # binding.pry
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?

  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    victim1 = Person.new("Perseus1")
    victim2 = Person.new("Perseus2")
    victim3 = Person.new("Perseus3")
    medusa.stare(victim)
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    # binding.pry

    assert_equal 3, medusa.statues.length
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    victim1 = Person.new("Perseus1")
    victim2 = Person.new("Perseus2")
    victim3 = Person.new("Perseus3")
    medusa.stare(victim)
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    # p medusa.statues
    # p medusa.statues.include?(victim)
    # p who_is_statue(medusa)
    assert_equal false, victim.stoned?
  end

end
