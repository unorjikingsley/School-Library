require "./person.rb"

class Teacher < Person
  def initialize(age, specialization, name = 'unknown', parent_permission = true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  attr_accessor :specialization

  def can_use_services?
    true
  end
end
