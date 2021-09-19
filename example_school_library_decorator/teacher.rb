# rubocop:disable Style/OptionalBooleanParameter
require_relative 'person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown', _parent_permission = true)
    super(age, name, specialization)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
# rubocop:enable Style/OptionalBooleanParameter
