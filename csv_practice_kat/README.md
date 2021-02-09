Prework for the 1pm Lesson. Please have this completed before 1pm. Thank you kindly.
1. Create a new directory in atom with a file called name.rb
2. Download the following CSV data by following these steps:
Put link into browser and double click it to open it.
https://data.cityofnewyork.us/api/views/25th-nujf/rows.csv?accessType=DOWNLOAD
Should open in numbers
Click File -> export to CSV
Then select your user from the computer and follow the file tree to this new directory
(Should be in the new directory at the same level of the name.rb file)
In that name.rb, start with the following code:
require 'csv'
require 'pry'
class Name
  attr_reader :year, :bio_gender, :ethnicity, :name, :count, :rank
  @@filename = 'Popular_Baby_Names.csv'
  def initialize(data)
    @year =
    @bio_gender =
    @ethnicity =
    @name =
    @count =
    @rank =
  end
  def self.find_by_name(name)
    rows = CSV.read(@@filename, headers: true)
    result = []
    # new code goes here
    result
  end 

  1. Add code to the `self.find_by_name` method, which builds an array of `Name` objects that match the name column from our CSV data.
    - how many rows of data can you find for the following names:
    - Ian, MEGAN
  2. Build ONE alternative copy of `self.find_by_name` for finding things specifically by another field, like `count`, `rank`, and `year`. These would be called `self.find_by_year` etc.
  3. Create a new class method called `self.where` which takes a hash of a detail, and builds an array of `Name` objects that match the CSV data. For this method, you will need to copy the `CSV.read` line from our `self.find_by_name` method.
    - The 'key' of the hash will be a symbol that matches the name of the column in the CSV file.
    - For example, we might call `results = Name.where( { rank: "15" } )`
    - how many rows of data can you find for:
    - Rows with a rank of 25
    - Rows with a bio_gender of male? of female?
    - Rows with an ethnicity of "BLACK NON HISPANIC"?
  4. Create a new class method called `self.order` which will allow us to sort data based on a hash of input.
    - A use-case will look like `results = Name.order( { year: :asc } )`
    - This would sort our CSV file by year in ascending order.
    - What is the first row of data that comes back?
    - A use-case will look like `results = Name.order( { name: :desc } )`
    - This would sort our CSV file by name in descending order.
    - What is the first row of data that comes back?    