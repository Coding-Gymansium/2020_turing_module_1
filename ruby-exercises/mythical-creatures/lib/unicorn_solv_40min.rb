class Unicorn
attr_reader :name, :color
  def initialize(name, color= "white", say= "message")
    @name = name
    @color = color
    @say = say
  end
  def white?
    @color == "white"
  # if "white"
  #   true
  # else
  #   false
  # end
  end

  def say(n)
   "**;* #{n} **;*"
  end

end
