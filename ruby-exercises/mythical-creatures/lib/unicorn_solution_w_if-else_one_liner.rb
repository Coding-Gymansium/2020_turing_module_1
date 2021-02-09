class Unicorn
  attr_reader :name, :color
  def initialize(name, color="white", say="silence..")
    @name = name
    @color = color
    @say = say

  end
  def white?
   return true if color == "white" else false
  end
  def say(n)
    return "**;* #{n} **;*"
  end
end
