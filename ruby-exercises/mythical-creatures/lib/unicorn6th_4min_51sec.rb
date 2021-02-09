class Unicorn
  attr_reader :name, :color
    def initialize(name, color, say)
      @name = name
      @color = "white"
      @say = "silent"
    end

    def white?
      @color == "white"
    end
    def say(string)
      "**;* #{string} **;*"
    end
end
