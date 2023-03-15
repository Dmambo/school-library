require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'
require_relative 'person'
require 'date'

# Create classrooms and students
classroom_a = Classroom.new('A')
classroom_b = Classroom.new('B')

student1 = Student.new('John', 'Doe')
student2 = Student.new('Mary', 'Smith')

# Add students to classrooms
classroom_a.add_student(student1)
classroom_b.add_student(student2)

# Create books and people
book1 = Book.new('Harry Potter', 'J.K. Rowling')
book2 = Book.new('The Lord of the Rings', 'J.R.R. Tolkien')

person1 = Person.new('Alice')
person2 = Person.new('Bob')

# Rent books
Rental.new(Date.today, book1, person1)
Rental.new(Date.today, book2, person2)


# Print rentals of a person
puts "#{person1.name}'s rentals:"
person1.rentals.each do |rental|
  puts "- #{rental.book.title} (#{rental.date})"
end
