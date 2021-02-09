class Werewolf
  attr_reader :name, :location, :human, :stomach
  def initialize(name, location="earth")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @stomach = []
  end
  def human?
    return @human = true unless @wolf == true
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry
  end
  def eats_victim(victim)
    @hungry = false unless @human
    @stomach << victim unless @human
    victim.status = :dead unless @human
  end
end
