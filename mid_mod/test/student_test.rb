require './test/test_helper'
require './lib/student'

class StudentTest < Minitest::Test

  def test_it_exists
    student = Student.new({name: "Morgan", age: 21})

    assert_instance_of Student, student
  end
  
  def test_it_has_name_and_age
    student = Student.new({name: "Morgan", age: 21})
    
    assert_equal "Morgan", student.name
    assert_equal 21, student.age
  end

  def test_it_starts_without_scores
    student = Student.new({name: "Morgan", age: 21})
    
    assert_equal [], student.scores
  end

  def test_it_can_log_scores
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)

    assert_equal [89, 78], student.scores
  end

  def test_it_obtains_grade_from_scores_average
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)

    assert_equal 83.5, student.grade
  end
end