class Werewolf
  attr_reader :name, :location, :stomach
  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
    @stomach = []
  end

  def human?
    @human
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

  def eats(victim)
    @stomach << victim unless @human == true
    @hungry = false unless @human == true
    victim.status = :dead
  end

end
