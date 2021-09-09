# frozen_string_literal: true

class Classroom
  attr_accessor :label

  def initialize(label)
    @label = label
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end
