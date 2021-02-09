require "pry"
class Unicorn
  attr_reader :name, :color
  def initialize(name, color="white")
    @name = name
    @color = color
    # binding.pry
  end

  def white?
    @color == "white"

  end

  def say(phrase)
    "**;* #{phrase} **;*"
  end
end
