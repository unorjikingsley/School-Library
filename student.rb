require "./person.rb"

class Student < Person
  # Constructor extends parent's constructor by adding @classroom and a parameter for it.
  def initialize(age, classroom, name = "unknown", parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    "¯\(ツ)/¯"
  end
end
