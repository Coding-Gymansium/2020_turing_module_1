class Employee
  attr_reader :base_salary, :estimated_annual_sales, :name, :id
  def initialize(base_salary, estimated_annual_sales, name, id)
    @base_salary = base_salary
    @estimated_annual_sales = estimated_annual_sales
    @name = name
    @id = id 
  end

end