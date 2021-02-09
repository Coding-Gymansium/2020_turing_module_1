class TrickOrTreater
  attr_reader :custom, :bag

  def initialize(custom)
    @custom = custom
    @bag = []
  end

  def dressed_up_as
    @custom.style
  end

  def has_candy?
    @bag.count > 0
  end

  def candy_count
    @bag.count
  end
  
  def eat
    @bag.shift
  end 

end