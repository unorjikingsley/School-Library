require_relative 'book'

# Create a class Rental with the following:
# @date instance variable, should be initialized in the constructor.
# Setter and getter for @date (remember about attr_accessor).
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person, person_book_index)
    @date = date

    # similar to books. Now, a person/book object knows which rentals are associated with them
    @person = person

    # add the current Rental object (self) to the list of rentals (rentals attribute) of the book object.
    @book = book

    @person_book_index = person_book_index
    person&.add_rental(self)
    book&.add_rental(self)
  end

  def to_hash
    {
      'date' => @date,
      'person' => @person.to_hash,
      'book' => @book.to_hash,
      'person_book_index' => @person_book_index
    }
  end
end
