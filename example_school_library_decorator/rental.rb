# frozen_string_literal: true

class Rental # rubocop:todo Style/Documentation
  attr_accessor :date, :book

  def initialize(date, book)
    @date = date
    @book = book
    book.rentals.push(self)
  end
end
