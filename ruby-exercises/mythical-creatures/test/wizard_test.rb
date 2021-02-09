gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/wizard'

class WizardTest < Minitest::Test
  def test_has_name
    wizard = Wizard.new("Eric")
    assert_equal "Eric", wizard.name
  end

  def test_can_have_different_name
    # skip
    wizard = Wizard.new("Alex")
    assert_equal "Alex", wizard.name
  end

  def test_is_bearded_by_default
    # skip
    wizard = Wizard.new("Ben")
    assert wizard.bearded?
  end

  def test_is_not_always_bearded
    # skip
    wizard = Wizard.new("Valerie", bearded: false)
    refute wizard.bearded?
  end

  def test_has_root_powers
    # skip
    wizard = Wizard.new("Sarah", bearded: false)
    assert_equal "sudo chown ~/bin", wizard.incantation("chown ~/bin")
  end

  def test_has_lots_of_root_powers
    # skip
    wizard = Wizard.new("Rob", bearded: false)
    assert_equal "sudo rm -rf /home/mirandax", wizard.incantation("rm -rf /home/mirandax")
  end

  def test_starts_rested
    # skip
    # create wizard
    wizard1 = Wizard.new("Gandalf")
    # .rested? returns true
    assert true, wizard1.rested?
  end

  def test_can_cast_spells
    # skip
    # create wizard
    wizard2 = Wizard.new("Wizard2")
    # .cast returns "MAGIC MISSILE!"
    assert "MAGIC MISSILE!", wizard2.cast
  end

  def test_gets_tired_after_casting_three_spells
    # skip
    # create wizard
    wizard3 = Wizard.new("Aggresive Wizard")
    # casts spell twice
    wizard3.cast
    wizard3.cast
    # check wizard is rested
    assert true, wizard3.rested?
    # casts spell
    wizard3.cast
    # check wizard is not rested
    assert_equal false, wizard3.rested?
  end

end
