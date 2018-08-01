require 'minitest/autorun'
require 'minitest/pride'
require './lib/instrument'
require './lib/student'

class StudentTest < Minitest::Test

  def test_it_exist
    student = Student.new("Anna", 12)

    assert_instance_of Student, student
  end

  def test_student_is_enrolled
    student = Student.new("Anna", 12)

    assert_equal true, student.enrolled?
  end

  def test_student_has_instrument
    student = Student.new("Anna", 12)
    instrument = Instrument.new("Piano")

    assert_nil student.instrument
  end

  def test_it_can_assign_instrument
    student = Student.new("Anna", 12)
    instrument = Instrument.new("Piano")
    
    assert_equal instrument, student.assign_instrument(instrument)
  end
end
