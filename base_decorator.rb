# Prepare base Decorator
# Make sure that it inherits from Nameable.
# In the constructor assign a nameable object from params to an instance variable.
# Implement the correct_name method that returns the result of the correct_name method of the @nameable.

require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  attr_accessor :nameable

  def correct_name
    @nameable.correct_name
  end
end
