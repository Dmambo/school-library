require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, **rest)
    super(age, **rest)
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
