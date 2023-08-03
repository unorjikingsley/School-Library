require_relative 'person'

# This syntax creates a Teacher class that inherits from the person class and adds and modifies the person object.
class Teacher < Person
  attr_reader :specialization

  # @param age [Integer] The age of the teacher.
  # @param specialization [String] The specialization of the teacher.
  # @param name [String] The name of the teacher (default is 'unknown').
  # @param parent_permission [Boolean] Permission from parents (default is true).

  def initialize(specialization, age, name = 'unknown', id = nil, parent_permission: true)
    id ||= Random.rand(1..188)

    super(id, age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  # Override can_use_services? method to always return true for teachers.
  def can_use_services?
    true
  end

  def to_hash
    {
      'id' => @id,
      'type' => self.class.name,
      'name' => @name,
      'age' => @age,
      'specialization' => @specialization,
      'parent_permission' => @parent_permission,
      'rentals' => @rentals.map { |rental| { 'date' => rental.date } }
    }
  end
end
