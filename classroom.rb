# require_relative 'student'

# # Create a class Classroom with the following:
# # @label instance variable, should be initialized in the constructor.
# # Setter and getter for @label (remember about attr_accessor).
# class Classroom
#   attr_accessor :label
#   attr_reader :students

#   def initialize(label)
#     @label = label
#     @students = []
#   end

#   # Make sure that when adding a student to a classroom it also sets the classroom for the student.
#   def add_student(student)
#     @students << student # adding to an already existing student array
#     student.classroom = self
#     # we are assigning the classroom attribute of a student object to self (i.e., the current object) only if
#     # the student's current classroom is not already the same as the current object
#   end
# end

require_relative 'student'

class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end
end
