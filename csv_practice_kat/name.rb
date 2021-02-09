require 'csv'
require 'pry'
class Name
  attr_reader :year, :bio_gender, :ethnicity, :name, :count, :rank
  @@filename = 'Popular_Baby_Names.csv'
  def initialize(data)
    @year = data["Year of Birth"]
    @bio_gender = data["Gender"]
    @ethnicity = data["Ethnicity"]
    @name = data["Child's First Name"]
    @count = data["Count"]
    @rank = data["Rank"]
  end
  def self.find_by_name(name)
    rows = CSV.read(@@filename, headers: true)
    result = []
    # new code goes here
    rows.each do |child| if child["Child's First Name"].downcase == name.downcase
      result << Name.new(child)
      end
    end
    # binding.pry
    p result
  end

  def self.find_by_year(year)
    rows = CSV.read(@@filename, headers: true)
    result = []
    # new code goes here
    rows.each do |child| if child["Year of Birth"] == year
      result << Name.new(child)
      end
    end
    # binding.pry
    p result
  end
end

Name.find_by_year("2011")
Name.find_by_name("Megan")
