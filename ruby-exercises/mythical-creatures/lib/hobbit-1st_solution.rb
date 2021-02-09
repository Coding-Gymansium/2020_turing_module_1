class Hobbit
  attr_reader :name, :disposition, :age, :has_ring, :is_short
  def initialize(name, disposition="homebody", age=0, has_ring=false, is_short=true)
    @name = name
    @disposition = disposition
    @age = 0
    @has_ring = false
    @is_short = is_short
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    return true if @age >= 33 && @age < 101
  end

  def old?
    return true if @age > 101
  end

  def has_ring?
    @has_ring
  end

  def is_short?
    @is_short
  end

end
