class Centaur
  attr_reader :name, :breed, :lay_down, :rested
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @action_counter = 0
    @standing = true
    @sleep = false
    @lay_down = false
    @rested = false
    @drinks = 0
    @sick = false
  end

  def shoot
      @action_counter += 1 unless @sleep == true
      if @action_counter >= 3
        return "NO!"
      elsif @lay_down == true
        return "NO!"
      else
        return "Twang!!!"
      end
  end

  def run
    @action_counter += 1 unless @sleep == true
    if @action_counter >= 3
      return "NO!"
    elsif @lay_down == true
      return "NO!"
    else
      return "Clop clop clop clop!!!"
    end
  end

  def cranky?

    if @action_counter >= 3 && @sleep == false
      @cranky = true
    elsif @sleep == true
        @cranky = false && @action_counter = 0
    end
  end

  def action_counter
    @action_counter
  end

  def standing?
    if @lay_down == true
      @standing = false
    elsif @lay_down == false
      @standing = true
    end
  end

  def sleep
    if @standing == true
      return "NO!"
      @sleep = false
    else
      @action_counter = 0
      @sleep = true
    end
  end

  def lay_down
    @lay_down = true
    @standing = false
  end

  def laying?
    @lay_down
  end

  def stand_up
    @standing = true
    @lay_down = false
  end

  def drink_potion
    @drinks += 1 unless @lay_down == true
  if @standing == true
    @rested = true
  elsif @standing == false
    "NO!"
  end

  end
  def rested?
    @rested
  end

  def sick?
    if @drinks == 2
      @sick = true
    else
      @sick = false
    end
  end
end
