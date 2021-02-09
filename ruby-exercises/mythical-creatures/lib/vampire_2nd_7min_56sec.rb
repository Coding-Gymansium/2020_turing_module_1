class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(nombre, pet = "bat", thirsty=true, drink = false)
    @name = nombre
    @pet = pet
    @thirsty = thirsty
    @drink = drink
  end
  def pet
    @pet
  end
  def thirsty?
    @thirsty
  end
  def drink
    if @drink = true
      return @thirsty = false
    end 
  end
end
