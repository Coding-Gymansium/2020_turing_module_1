
require "./test/test_helper"

class MyClassTest < Minitest::Test 

  def test_it_exists
    my_class = MyClass.new
    assert_instance_of MyClass, my_class
  end

end

##################

class MyClass
  attr_reader :attribute
  
	def initialize(attribute)
		@something = attribute
	end
	
	def method
		
	end

	def method1
		
	end

	def method1
		
	end
end
