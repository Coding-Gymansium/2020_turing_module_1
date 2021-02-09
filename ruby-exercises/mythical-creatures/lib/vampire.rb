class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet="bat", thirsty=true, drink=false)
    @name = name
    @pet = pet
    @thirsty = thirsty
    @drink = drink
  end
  def thirsty?
    @thirsty
  end
  def drink
    return @thirsty = false if @drink = true
  end
end
