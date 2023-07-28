# Create a class Book with the following:
# @title and @author instance variables, should be initialized in the constructor.
# Setters and getters for instance variables (remember about attr_accessor).
# class Book
#   attr_accessor :title, :author
#   attr_reader :rentals

#   def initialize(title, author)
#     @title = title
#     @author = author
#     @rentals = []
#   end

#   def add_rental(rental)
#     # rental = Rental.new(date, self, person)
#     # @rentals.push(rental)

#     @rentals << rental
#     rental.book = self
#   end
# end

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rentals << rental
    rental.book = self
  end
end
