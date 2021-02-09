class Term
  attr_reader :name, :courses
  def initialize(name)
    @name = name
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def open_courses
    @courses.find_all do |course|
      course.full? == false
    end
  end

  def enrolled_students_names
    students = []
    @courses.map do |course|
      course.students.map do |student|
       students << student.name 
      end 
    end.flatten
    students.uniq
  end 

end