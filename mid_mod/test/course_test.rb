require './test/test_helper'
require './lib/student'
require './lib/course'
require "pry"
class CourseTest < Minitest::Test

  def test_it_exists
    course = Course.new("Calculus", 2)

    assert_instance_of Course, course
  end

  def test_course_has_a_name
    course = Course.new("Calculus", 2)

    assert_equal "Calculus", course.name
  end

  def test_course_a_capacity
    course = Course.new("Calculus", 2)

    assert_equal 2, course.capacity
  end

  def test_course_starts_without_students
    course = Course.new("Calculus", 2)

    assert_equal [], course.students
  end

  def test_course_starts_not_full
    course = Course.new("Calculus", 2)

    assert_equal false, course.full?
  end

  def test_course_can_enroll_students
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student1)
    course.enroll(student2)

    assert_equal [student1, student2], course.students
  end

  def test_course_can_be_full
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student1)
    course.enroll(student2)
    
    assert_equal true, course.full?
  end

end