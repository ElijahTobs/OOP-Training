class Classroom
  attr_accessor :label
  
  def initialize(label)
    @label = label
  end

  def add_student(student)
    @students.push(student)
    students.classroom = self
  end


end