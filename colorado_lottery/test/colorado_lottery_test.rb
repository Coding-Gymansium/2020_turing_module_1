require "./test/test_helper"

class ColoradoLotteryTest < MiniTest::Test 

  def test_it_exists
    pick_4 = Game.new('Pick 4', 2)
    assert_instance_of Game, pick_4
  end
end
