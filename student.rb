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
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    '¯\(ツ)/¯'
  end
end
