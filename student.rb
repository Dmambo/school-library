require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, parent_permission = true, name = "Unknown", classroom)
    super(age, parent_permission, name)
    @classroom = classroom
  end

  def play_hooky
    "¯\\_(ツ)_/¯"
  end
end
