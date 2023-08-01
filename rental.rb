# Create a class Rental with the following:
# @date instance variable, should be initialized in the constructor.
# Setter and getter for @date (remember about attr_accessor).
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    # similar to books. Now, a person/book object knows which rentals are associated with them
    @person = person

    # add the current Rental object (self) to the list of rentals (rentals attribute) of the book object.
    @book = book

    person&.add_rental(self)
    book&.add_rental(self)
  end
end
