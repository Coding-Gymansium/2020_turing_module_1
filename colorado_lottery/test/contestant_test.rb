require "./test/test_helper"

class ContestantTest < MiniTest::Test 

  def test_it_exists
    alexander = Contestant.new({first_name: 'Alexander',
                                          last_name: 'Aigiades',
                                          age: 28,
                                          state_of_residence: 'CO',
                                          spending_money: 10})
    assert_instance_of Contestant, alexander
  end

  def test_it_has_attributes
    alexander = Contestant.new({first_name: 'Alexander',
                                          last_name: 'Aigiades',
                                          age: 28,
                                          state_of_residence: 'CO',
                                          spending_money: 10})

    assert_equal "Alexander Aigiades", alexander.full_name
    assert_equal 28, alexander.age
    assert_equal "CO", alexander.state_of_residence
    assert_equal false, alexander.out_of_state?
  end

  def test_it_can_spend_money
    alexander = Contestant.new({first_name: 'Alexander',
                                          last_name: 'Aigiades',
                                          age: 28,
                                          state_of_residence: 'CO',
                                          spending_money: 10})
    
    assert_equal 10, alexander.spending_money
  end

  def test_has_game_of_interest
    alexander = Contestant.new({first_name: 'Alexander',
                                          last_name: 'Aigiades',
                                          age: 28,
                                          state_of_residence: 'CO',
                                          spending_money: 10})

    assert_equal [], alexander.game_interests

    alexander.add_game_interest('Mega Millions')
    alexander.add_game_interest('Pick 4')

    assert_equal ["Mega Millions", "Pick 4"] ,alexander.game_interests
  end
end