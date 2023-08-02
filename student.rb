require_relative 'person'

# This syntax creates a student class that inherits from the person class and adds and modifies the person object.
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, parent_permission, name = 'unknown')
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    classroom&.add_student(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
