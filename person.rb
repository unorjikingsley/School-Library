# This syntax creates a Person class and makes sure makes other files cn create objects from it.
class Person
  # @param age [Integer] The age of the person.
  # @param name [String] The name of the person (default is 'unknown').
  # @param parent_permission [Boolean] Permission from parents (default is true).

  # constructor
  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_reader :id # getters
  attr_accessor :name, :age # setters

  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end
end
