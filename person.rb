class Person
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(name, age, parent_permission = true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end
  
  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end
