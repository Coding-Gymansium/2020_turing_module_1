class Bag
  attr_reader :candies, :candies_count
    def initialize(empty= true)
    @empty = empty
    @candies_count = 0
    @candies = []
    end

  def empty?
    @candies.empty?
    # @empty = true unless @candies.count >= 1
  end

  def count
    @candies.length
  end

  def <<(candy)
    @candies << candy
    @candies_count += 1
  end

  def contains?(type)
    @candies.any? { |candy| candy.type == type }
  end
end
