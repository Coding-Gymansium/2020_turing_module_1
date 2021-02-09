class Library
  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
  end
  def books
    @books.flatten
  end

  def publication_time_frame_for(author)
   range = {}
    finish = author.books.max_by {|book| book.publication_year}
    finish.publication_year
    start = author.books.min_by {|book| book.publication_year}
    range[:start] = start.publication_year
    range[:end] = finish.publication_year
    
    return range
  end
end