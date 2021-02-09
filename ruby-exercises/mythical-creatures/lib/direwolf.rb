class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home='Beyond the Wall', size='Massive')
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
  end

  def protects(stark)
    # starks_to_protect << stark unless @home != stark.location
    if @home == stark.location && starks_to_protect.length < 2
      stark.safe = true
      # binding.pry
      case stark.name
        when "Melvin"
          stark.house_words = 'Winter is past'
        when stark.name
          stark.house_words = "The North Remembers"
      end
      # stark.house_words = "The North Remembers"
      return starks_to_protect << stark
    end
  end

  def hunts_white_walkers?
    true unless @starks_to_protect.empty? == false
  end

  def leaves(stark)
    if @starks_to_protect.include?(stark)
      stark.safe = false
      @starks_to_protect.delete(stark)
      return @starks_to_protect
    end
    stark
    # binding.pry
  end
end

class Stark
  attr_reader :location, :name
  attr_accessor :safe, :house_words
  def initialize(name, location='Winterfell', house_words= 'Winter is Coming')
    @name = name
    @location = location
    @house_words = house_words
    @safe = false
  end

  # def check_stark
  #   if @name == "Melvin"
  #   return @house_words = 'Winter is past'
  #   end
  #   "Winter is Coming"
  # end

  def safe?
    @safe
  end
end
