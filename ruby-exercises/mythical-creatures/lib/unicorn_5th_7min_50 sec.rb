class Unicorn
  attr_reader :name, :color, :say
  def initialize(name, color = "white", say = "nothing")
    @name = name
    @color = color
    @say = say
  end
  def white?
    color == "white"
  end
  def say(n)
    "**;* #{n} **;*"
  end
end
