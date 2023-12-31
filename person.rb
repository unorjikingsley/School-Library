# Make sure that your Person class inherits from Nameable
# Make sure that this class has a method correct_name implemented. It should simply
# return the name attribute.

require_relative 'nameable'

# This syntax creates a Person class and makes sure makes other files cn create objects from it.
class Person < Nameable
  attr_accessor :name, :age, :type
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..188)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
    rental.person = self
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
