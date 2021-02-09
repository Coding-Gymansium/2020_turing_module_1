require 'minitest/autorun'
require 'minitest/pride'
require "./lib/book"
require "./lib/author"
require "./lib/library"

require "pry"

class LibraryTest < MiniTest::Test
  
  def test_it_exists
    dpl = Library.new("Denver Public Library")
    assert_instance_of Library, dpl
  end

  def test_it_has_a_name
    dpl = Library.new("Denver Public Library")
    assert_equal "Denver Public Library", dpl.name
  end

  def test_it_can_have_books
    dpl = Library.new("Denver Public Library")
    assert_equal [], dpl.books
  end

  def test_it_can_have_authors
    dpl = Library.new("Denver Public Library")
    assert_equal [], dpl.authors
  end

  def test_it_can_add_authors
    dpl = Library.new("Denver Public Library")
  
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")

    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"}) 

    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")    
    
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    assert_equal [charlotte_bronte,harper_lee], dpl.authors
  end

  def test_it_can_add_books
    dpl = Library.new("Denver Public Library")
   
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")

    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"}) 

    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")    
    
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    assert_equal [jane_eyre, professor, villette, mockingbird], dpl.books
  end

  def test_it_return_publication_time_frame_per_author
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")

    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"}) 

    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")    
    
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    expected = {:start=>"1847", :end=>"1857"}

    assert_equal expected, dpl.publication_time_frame_for(charlotte_bronte)
  end

end