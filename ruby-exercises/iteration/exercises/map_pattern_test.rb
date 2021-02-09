require 'minitest/autorun'
require 'minitest/pride'

class MapPatternTest < Minitest::Test

  def test_1
    names = ["alice", "bob", "charlie"]
    # capitalized_names = []
    # names.each do |name|
    #   capitalized_names << name.capitalize
    # end
    capitalized_names = names.map {|n| n.capitalize}
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_2
    # skip
    family = {
      mother: "alice",
      father: "bob",
      brother: "charlie"
    }
    # capitalized_family = {}
    # family.each do |relationship, name|
    #   capitalized_family[relationship] = name.capitalize
    # end
    expected = {
      mother: "Alice",
      father: "Bob",
      brother: "Charlie"
    }
# My first solution with map
    # capitalized_family = Hash[family.map { |relationship, name| [relationship, name.capitalize] }]
# My second solution with map
    capitalized_family = family.map { |relationship, name| [relationship, name.capitalize] }.to_h
    assert_equal expected, capitalized_family
  end

  def test_3
    # skip
    numbers = [1, 2, 3, 4, 5]
    doubles = []

    # numbers.each do |number|
    #   # Your Code Here
    #   # doubles.push(number * 2)
    #   doubles << number * 2
    # end
    doubles = numbers.map { |n| n * 2 }.to_a
    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_4
    # skip
    numbers = { one: 1, two: 2, three: 3, four: 4, five: 5 }
    doubles = {}
    numbers.each do |name, number|
      # Your Code Here
      doubles[name] = number * 2
    end
    # p doubles
# My map solution:
    # doubles = numbers.map { |k, v| [ k, v * 2 ] }.to_h

    expected = { one: 2, two: 4, three: 6, four: 8, five: 10 }
    assert_equal expected, doubles
  end

  def test_5
    # skip
    numbers = [1, 2, 3, 4, 5]
    squares = []
    # Your Code Here
    squares = numbers.map { |n| n ** 2 }.to_a
    # p squares
    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_6
    # skip
    numbers = { one: 1, two: 2, three: 3, four: 4, five: 5 }
    squares = {}
    # Your Code Here
    #map solution:
    squares = numbers.map { |k, v| [k, v **2] }.to_h
    # each solution:
    # numbers.each do |k, v|
    #   squares[k] = v ** 2
    # end

    expected = { one: 1, two: 4, three: 9, four: 16, five: 25 }
    assert_equal expected, squares
  end

  def test_7
    # skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here

    # lengths = []
    # names.each do |name|
    #   lengths << name.length
    # end

    lengths = names.map { |name| name.length }
    # p lengths
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_8
    # skip
    family = { mother: "alice", father: "bob", brother: "charlie", uncle: "david", sister: "eve" }
    #Your Code Here
    # lengths = Hash[family.map { |k, v| [k, v.length] }]
    lengths = {}
    family.each do |k, v|
      lengths[k] = v.length
    end
    # p lengths
    expected = { mother: 5, father: 3, brother: 7, uncle: 5, sister: 3 }
    assert_equal expected, lengths
  end

  def test_9
    # skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    #Your Code Here
    # backwards = names.map do |name|
    #   name.reverse
    # end
    backwards = []
    names.map do |name|
      backwards.push(name.reverse)
    end
    # p backwards
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_10
    # skip
    family = { mother: "alice", father: "bob", brother: "charlie", uncle: "david", sister: "eve" }
    #Your Code Here
    # backwards = Hash[ family.map { |relationship, name| [relationship, name.reverse] }]
    
    backwards = {}
    family.each do |k, v|
      backwards[k] = v.reverse
    end

    p backwards
    expected = { mother: "ecila", father: "bob", brother: "eilrahc", uncle: "divad", sister: "eve" }
    assert_equal expected, backwards
  end
end
