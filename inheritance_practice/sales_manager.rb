require './employee'

class SalesManager < Employee 
  def initialize(name, id)
    # super(name, id)
    super
  end
  
  def bonus
    @estimated_annual_sales * 0.1
  end

end
