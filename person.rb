class Person
  def initialize(age, name = 'unknown', parent_permission = true)  #constructor
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # attr_reader :id                                   #getters
  # attr_accessor :name, :age                         #setters

  attr_accessor :id, :name, :age

  def can_use_services?
    of_age? || @parent_permission
  end

  Private                                   #private method
   def of_age? 
    @age >= 18
  end
end

