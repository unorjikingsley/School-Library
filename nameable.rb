# Implement a method called correct_name that will raise a NotImplementedError.
class Nameable
  def correct_name
    raise NotImplementedError, "The 'correct_name' method should be implemented in the subclass."
  end
end
