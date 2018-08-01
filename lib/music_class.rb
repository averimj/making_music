class MusicClass
    attr_reader :student_count

  def initialize
    @student_count = 0
    @student = []
  end

  def add_student(student)
    @student << student
    @student_count += 1
  end

  def student_list
    list = @student.map do |stud|
      stud.name
    end
    "#{list[0]}, #{list[1]}, #{list[2]}"
  end

  def average_age
    age = @student.map do |stud|
      stud.age
    end
      final_age = age.sum
      final_age / age.count 
  end
end
