class Bag
  def initialize(bag=0)
    @bag = []
  end

  def empty?
    @bag.empty?
  end

  def count
    @bag.size
  end

  def candies
    @bag
  end

  def <<(candy)
    @bag << candy
  end

  def contains?(type)
    @bag.each do |candy|
      if candy.type == type
        return true
      else
        return false
      end
    end
  end

  def grab(name)
    output = ''
    @bag.each do |candy|
      if candy.type == name
        output = @bag.delete(candy)
        break
      end
    end
    output
  end

  def take(number)
    @bag.slice!(0...number)
  end


end
