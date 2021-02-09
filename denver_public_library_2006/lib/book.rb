class Book
  attr_reader :title, :author_first_name, :author_last_name, :author, :publication_year
  def initialize(data)
    @title = data[:title]
    @author_first_name = data[:author_first_name]
    @author_last_name = data[:author_last_name]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_date = data[:publication_date]
    @publication_year = @publication_date.split(" ").last
  end

end