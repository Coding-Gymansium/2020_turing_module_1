require 'minitest/autorun'
require 'minitest/pride'
require "./lib/book"
require "./lib/author"
require "./lib/library"

require "pry"

class AuthorTest < MiniTest::Test
  
  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_has_a_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_it_starts_with_empty_array_of_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_write_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal Book, jane_eyre.class
  end

  def test_it_can_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal [jane_eyre], charlotte_bronte.books
  end

  def it_can_return_the_title
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_it_can_have_multiple_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write("Villette", "1853")

    assert_equal [jane_eyre, villette], charlotte_bronte.books
  end

end
