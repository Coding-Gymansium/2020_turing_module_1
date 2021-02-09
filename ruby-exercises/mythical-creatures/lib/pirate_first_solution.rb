class Pirate
  attr_reader :name, :job, :cursed, :has_booty, :booty
  def initialize(name, job="Scallywag", cursed=false, heinous_act=false, has_booty=false, rob_ship=false)
    @name = name
    @job = job
    @cursed = cursed
    @heinous_act = heinous_act
    @has_booty = has_booty
    @booty = 0
    @rob_ship = rob_ship
    require "pry"; binding.pry
  end
  def name
    @name
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    heinous_act += 1
    return @cursed = true if @heinous_act >= 3
  end
  def booty
    @booty
  end
  def rob_ship
    @booty += 100
  end
end
