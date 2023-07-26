# Create a class Classroom with the following:
# @label instance variable, should be initialized in the constructor.
# Setter and getter for @label (remember about attr_accessor).
class Classroom
  def initialize(label)
    @label = label
    # Create the has-many side (a classroom has many students).
    @students = []
  end

  attr_accessor :label
  attr_reader :students

  # Make sure that when adding a student to a classroom it also sets the classroom for the student.
  def add_student(student)
    @students << student
    student.classroom = self if student.classroom != self
  end
end
