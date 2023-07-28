require_relative 'person'

# This syntax creates a student class that inherits from the person class and adds and modifies the person object.
class Student < Person
  # @param age [Integer] The age of the student.
  # @param classroom [String] The classroom where the student belongs.
  # @param name [String] The name of the student (default is 'unknown').
  # @param parent_permission [Boolean] Permission from parents (default is true).

  # Constructor extends parent's constructor by adding @classroom and a parameter for it.
  def initialize(age, classroom, name: 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    # Make sure that when adding a student to a classroom it also sets the classroom for the student.
    @classroom = classroom
    # Create the belongs-to side (a student belongs to a classroom).
    add_classroom(classroom)
  end

  attr_accessor :classroom

  # Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
  def add_classroom(classroom)
    # parameter representing the classroom object to be associated with the current object(student)
    @classroom = classroom
    # This part pushes the current student object (self) to the array of students in the classroom.
    classroom.students.push(self) unless classroom.students.include?(self)
    # adding the current student object(self) to the list of students of the given
    # classroom except the student is not already present in the list of students of the classroom.
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
