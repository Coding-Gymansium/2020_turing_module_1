class Costume
  attr_reader :costume
  def initialize(costume)
    @costume = costume
  end
end

class TrickOrTreater
  attr_reader :bag, :sugar_level
  def initialize(dress)
    @costume = dress.costume
    @bag = []
    @sugar_level = 0
  end

  def dressed_up_as
    @costume
  end

  def has_candy?
    if @bag.size > 0
      true
    else
      false
    end
  end

  def candy_count
    @bag.size
  end

  def eat
    candy = @bag.pop
    @sugar_level += candy.sugar
  end

end
