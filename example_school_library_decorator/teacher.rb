# frozen_string_literal: true

require './person'

class Teacher < Person # rubocop:todo Style/Documentation
  # rubocop:todo Style/OptionalBooleanParameter
  def initialize(age, specialization, name = 'Unknown', parent_permission = true)
    # rubocop:enable Style/OptionalBooleanParameter
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
