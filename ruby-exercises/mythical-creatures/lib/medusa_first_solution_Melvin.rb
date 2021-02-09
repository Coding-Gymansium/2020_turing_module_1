require "pry"
# binding.pry
class Medusa
  attr_accessor :name, :statues
  def initialize(name)
    @name = name
    @statues = []

  end
  def stare(victim)
    victim.stoned = true
    @statues << victim
    if @statues.length == 4
    first_victim = @statues.shift
    first_victim.stoned = false
    end
  end
  
end


class Person
  attr_accessor :name, :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end
  def stoned?
   @stoned
  end
end


# Extra method for fun
def who_is_statue(medusa_name)
  # binding.pry
  medusa_name.statues.map {|s| s.name}
end
