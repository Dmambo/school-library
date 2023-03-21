require_relative 'app'

class Main
  def initialize()
    @app = App.new
  end

  def display_menu
    puts 'Welcome to school library App'
    puts 'Please choose an option to enter in a number'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List rentals for a given person id'
    puts "7. Quit\n"
  end

  def run
    # loop do
    # display_menu
    choice = gets.chomp.to_i

    # make dictionary for the options
    choice_options = {
      1 => @app.list_books,
      2 => @app.list_people,
      3 => @app.create_person,
      4 => @app.create_book,
      5 => @app.create_rental,
      6 => @app.list_rentals_for_person,
      7 => (lambda {
              puts 'Thank you for using this app!'
              exit
            })
    }

    choice_options[choice]
  end
end

main = Main.new
main.run
