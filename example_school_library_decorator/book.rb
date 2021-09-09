# frozen_string_literal: true

class Book # rubocop:todo Style/Documentation
  attr_accessor :title, :author, rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
