# Create a class Classroom with the following:
# @label instance variable, should be initialized in the constructor.
# Setter and getter for @label (remember about attr_accessor).
class Classroom
  def initialize(label)
    @label = label
    @students = []
  end

  attr_accessor :label
  attr_reader :students

  # Make sure that when adding a student to a classroom it also sets the classroom for the student.
  def add_student(student)
    @students << student # adding to an already existing student array
    student.classroom = self if student.classroom != self
    # we are assigning the classroom attribute of a student object to self (i.e., the current object) only if
    # the student's current classroom is not already the same as the current object
  end
end
