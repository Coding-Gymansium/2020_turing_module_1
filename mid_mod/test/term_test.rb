require './test/test_helper'
require './lib/student'
require './lib/course'
require './lib/term'
require "pry"
class TermTest < Minitest::Test

  def test_it_exists
    term = Term.new("Term1")

    assert_instance_of Term, term
  end

  def test_term_has_a_name
    term = Term.new("Term1")

    assert_equal ("Term1"), term.name
  end

  def test_term_has_a_list_of_multiple_courses
    term = Term.new("Term1")
    course1 = Course.new("Calculus", 2)
    course2= Course.new("Science", 5)
    course3 = Course.new("Literature", 3)

    term.add_course(course1)
    term.add_course(course2)
    term.add_course(course3)

    assert_equal [course1, course2, course3], term.courses
  end

  def test_term_can_list_courses_that_are_open
    term = Term.new("Term1")
    course1 = Course.new("Calculus", 2)
    course2= Course.new("Science", 5)
    course3 = Course.new("Literature", 3)

    term.add_course(course1)
    term.add_course(course2)
    term.add_course(course3)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Mary", age: 29})

    course1.enroll(student1)
    course1.enroll(student2)
    course3.enroll(student1)
    course3.enroll(student2)
    course3.enroll(student3)

    assert_equal [course2], term.open_courses
  end

  def test_term_can_list_all_student_names_across_courses
    term = Term.new("Term1")
    course1 = Course.new("Calculus", 2)
    course2= Course.new("Science", 5)
    course3 = Course.new("Literature", 3)

    term.add_course(course1)
    term.add_course(course2)
    term.add_course(course3)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Mary", age: 29})

    course1.enroll(student1)
    course1.enroll(student2)
    course3.enroll(student1)
    course3.enroll(student2)
    course3.enroll(student3)

    assert_equal ["Morgan", "Jordan", "Mary"], term.enrolled_students_names
  end

end
