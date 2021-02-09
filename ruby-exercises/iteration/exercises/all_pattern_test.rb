require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test
  def test_1
    account_balances = [0, 0, 0, 0, 0, 0, 0]
    all_zeros =
    account_balances.each do |balance|
      all_zeros = false unless balance.zero? else return all_zeros = true
    end
    assert_equal true, all_zeros
  end

  def test_2
    account_balances = {
      checking: 0,
      saving: 0,
      retirement_401k: 0,
      retirement_ira: 0,
    }
    all_zeros =
    account_balances.each do |account, balance|
      if !balance.zero?
        return all_zeros = false
      else
        return all_zeros = true
      end
    end
    assert_equal true, all_zeros
  end

  def test_3
    # skip
    words = ["love", "hate", "fire", "bird", "call"]
    all_four_letters =
    words.each do |word|
      # Your Code Here
      if word.size == 4
        return all_four_letters = true
      else
        return all_four_letters = false
      end
    end
    assert_equal true, all_four_letters
  end

  def test_4
    # skip
    words = {
      one: "love",
      two: "hate",
      three: "fire",
      four: "bird",
      five: "call"
    }
    all_four_letters =
    words.each do |position, word|
      # Your Code Here
      if word.size == 4
        return all_four_letters = true
      else
        return all_four_letters = false
      end
    end
    assert_equal true, all_four_letters
  end

  def test_5
    # skip
    statuses = [:busy, :busy, :busy]
    all_busy =
    # Your Code Here
    statuses.each { |status| return false if status != :busy; return true }

    assert_equal true, all_busy
  end

  def test_6
    # skip
    friend_status = {
      "Megan" => :busy,
      "Sarah" => :busy,
      "Duncan" => :busy,
    }
    all_busy =
    # Your Code Here
    friend_status.each { |name, status| return true if status == :name; return false }

    assert_equal true, all_busy
  end

  def test_7
    # skip
    zip_codes = [94381, 831, 50009, 36232, 8992, 89999, 11110]
    # Your Code Here
    all_five_digits =
    zip_codes.each do |code|
      if code.size == 5
        return all_five_digits = true
      else
        return all_five_digits = false
      end
    end

    assert_equal false, all_five_digits
  end

  def test_8
    # skip
    zip_codes = {
      "Megan" => 94381,
      "Sarah" => 831,
      "Duncan" => 50009,
      "Raymart" => 36232,
      "Alec" => 89092,
      "Cameron" => 89999,
      "Joshua" => 11110
    }
    # Your Code Here
    all_five_digits =
    zip_codes.each { |name, code| return false if code.size != 5 }

    assert_equal false, all_five_digits
  end

  def test_9
    # skip
    snacks = ["GARLIC PLANTAINS", "SNICKERDOODLES", "Pretzels"]
    # Your Code Here
    all_caps =
    snacks.each do |string|
      if string == string.upcase
        return all_caps = true
      else
        return all_caps = false
      end
    end
    assert_equal false, all_caps
  end

  def test_10
    # skip
    snacks = {
      savory: "GARLIC PLANTAINS",
      sweet: "SNICKERDOODLES",
      salty: "Pretzels"
    }
    # Your Code Here
    all_caps =
    snacks.each do |flavor, food|
      if food == food.upcase
        return all_caps = true
      else
        return all_caps = false
      end
    end

    assert_equal false, all_caps
  end
end
