class Passenger
  attr_reader :name, :age
  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @is_driver = false
  end

  def adult?
    @age >= 18
  end

  def drive
    @is_driver = true
  end

  def driver?
    @is_driver
  end
end