class Medusa
  attr_reader :name
  def initialize(name)
    @name = name
    @statues = []
  end

  def statues
    @statues
  end

  def stare(victim)
   victim.stoned = true
   @statues.push(victim)
   if @statues.count == 4
     first_victim = @statues.shift
     first_victim.stoned = false
   end


  end


end



class Person
  attr_accessor :name, :stoned
  def initialize(name, stoned=false)
    @name = name
    @stoned = stoned
  end
  def stoned?
    @stoned
  end

end
