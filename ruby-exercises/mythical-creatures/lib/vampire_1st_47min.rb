class Vampire
  attr_reader(:name, :pet, :thirsty)
  def initialize(name, pet="bat", thirsty= true, drink= false)
    @name = name
    @pet = pet
    @thirsty = thirsty
    @drink = drink
  end

  def name
    @name
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
