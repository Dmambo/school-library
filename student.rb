class Student
  attr_accessor :name, :classroom

  def initialize(name, last_name)
    @name = "#{name} #{last_name}"
  end
end
