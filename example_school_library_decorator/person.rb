# frozen_string_literal: true

require './corrector'

class Person # rubocop:todo Style/Documentation
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission = true) # rubocop:todo Style/OptionalBooleanParameter
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission || is_of_age?
  end

  def validate_name
    @name = @corrector.correct_name(@name)
  end

  private

  def is_of_age? # rubocop:todo Naming/PredicateName
    @age >= 18
  end
end
