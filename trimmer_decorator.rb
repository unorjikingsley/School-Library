# For the TrimmerDecorator:

# Create a class that inherits from the base Decorator class.
# Implement a method correct_name that makes sure that the output of
# @nameable.correct_name has a maximum of 10 characters. If it's longer it should trim
# the word.

require './base_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.strip.slice(0, 10)
  end
end
