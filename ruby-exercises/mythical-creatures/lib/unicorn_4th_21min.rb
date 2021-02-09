class Unicorn
  attr_reader :name, :color, :say
  def initialize(name, color= "white", say="says nothing")
    @name = name
    @color = color
    @say = say
  end
  def name
    return @name
  end
  def white?
    @color == "white"
  end
  def say(str)
    return "**;* #{str} **;*"
  end

end
