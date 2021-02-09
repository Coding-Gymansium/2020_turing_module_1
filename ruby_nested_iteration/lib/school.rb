class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def sort_students
    @courses.map do |course| 
      course.students.each do |student|
        sort(student)
      end
    end    
  end

  def student_names
    @courses.flat_map do |course| 
      course.students.map do |student|
        student.name
      end
    end.uniq
  end

end
