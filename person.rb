require_relative 'nameable'

class Person < Nameable
  def initialize(age, name)
    super()
    @age = age
    @name = name
  end

  def correct_name
    @name
  end
end
