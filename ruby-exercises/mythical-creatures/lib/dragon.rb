
class Dragon
  attr_reader :name, :color, :rider, :meals
    def initialize(name, color, rider, meals=0)
      @name =  name
      @color =  color
      @rider =  rider
      @meals = 0
    end

    def hungry?
      true unless @meals >= 3
    end

    def eat
      @meals += 1
    end
end
