class Unicorn
 attr_reader :name, :color, :say
  def initialize(name, color="white")
    @name = name
    @color = color
  end

  def white?
  @color == "white"
  end

  def say(x)
    "**;* #{x} **;*"
  end
end
