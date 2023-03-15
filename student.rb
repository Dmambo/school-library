class Student < Person
  attr_accessor :classroom

  def initialize(name, last_name, age, parent_permission)
    super(name, age, parent_permission)
    @name += " #{last_name}"
  end
end
