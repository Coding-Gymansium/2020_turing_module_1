class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1; @encounter_counter += 1
    if human.encounter_counter % 3 == 0
      swing_at(human)
    end
  end

  def swing_at(human)
    @swings += 1
  end

  def apologize(human)
    human.encounter_counter = 0
  end
end

class Human
 attr_accessor :encounter_counter, :knocked_out
 attr_reader :name
  def initialize(name="Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = knocked_out
  end

  def notices_ogre?
   true if @encounter_counter % 3 == 0
  end

  def knocked_out?
    if @encounter_counter == 6
      @knocked_out = true
    else
      @knocked_out = false
    end
  end
end
