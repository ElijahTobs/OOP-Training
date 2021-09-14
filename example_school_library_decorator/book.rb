class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author, rentals)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(self, person, date)


end
