class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end
  
  def empty?
    @candies.count == 0    
  end
  
  def count
    @candies.count
  end
  
  def <<(candy)
    @candies << candy
  end

  def contains?(name)
    # binding.pry
    @candies.any? {|candy| candy.type == name}
  end

end