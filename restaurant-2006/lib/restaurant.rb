class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @name = name
    @opening_time = opening_time
    @dishes = []
  end

  def closing_time(hours)
    ((@opening_time.to_i + hours).to_s + ":00")
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if @opening_time.to_i < 11; false
  end

  def menu_dish_names
    @dishes.map { |dish| dish.upcase }
  end

  def announce_closing_time(hours)
    closing_time = ((@opening_time.to_i + hours).to_s + ":00") 
    if closing_time.to_i < 12
      return "#{@name} will be closing at #{closing_time}AM"
    else
      return "#{@name} will be closing at #{(closing_time.to_i - 12).to_s + ":00"}PM"
    end
  end
end