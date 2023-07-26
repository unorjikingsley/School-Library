# Create a class that inherits from the base Decorator class.
# Implement a method correct_name that makes sure that the output of
# @nameable.correct_name has a maximum of 10 characters. If it's longer it should trim
# the word.

require_relative 'base_decorator'

# For the TrimmerDecorator:
# Create a class that inherits from the base Decorator class.
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.strip.slice(0, 10)
    # @nameable.correct_name.length > 10 ? @nameable.correct_name[0, 10] : @nameable.correct_name
  end
end
