require_relative 'person'

# This syntax creates a Teacher class that inherits from the person class and adds and modifies the person object.
class Teacher < Person
  # @param age [Integer] The age of the teacher.
  # @param specialization [String] The specialization of the teacher.
  # @param name [String] The name of the teacher (default is 'unknown').
  # @param parent_permission [Boolean] Permission from parents (default is true).

  def initialize(specialization, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  # Override can_use_services? method to always return true for teachers.
  def can_use_services?
    true
  end
end
