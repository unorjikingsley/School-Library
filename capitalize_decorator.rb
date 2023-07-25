# For the CapitalizeDecorator:
# Create a class that inherits from the base Decorator class.
# Implement a method correct_name that capitalizes the output of @nameable.correct_name.

require './base_decorator'
require_relative('./person')

class CapitalizeDecorator < Base_Decorator
  def correct_name
    @nameable.correct_name.capitalizes
  end
end
