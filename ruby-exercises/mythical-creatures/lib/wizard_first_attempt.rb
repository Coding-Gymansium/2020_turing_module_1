class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded=true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast = 0
  end

  def bearded?
    if @bearded == true
      return true 
    else false
    end
  end

  def incantation(string)
    return "sudo #{string}"
  end

  def rested?
    @rested
    return false if @cast >= 3
  end

  def cast
    @cast += 1
    "MAGIC MISSILE!"
  end
end
