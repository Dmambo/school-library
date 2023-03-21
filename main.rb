require_relative 'app'

class Main
  def initialize()
    @app = App.new
    @hash = { 1 =>
    proc do
      @app.list_books
    end, 2 =>
    proc do
      @app.list_people
    end, 3 =>
    proc do
      @app.create_person
    end, 4 =>
    proc do
      @app.create_book
    end, 5 =>
    proc do
      @app.create_rental
    end, 6 =>
    proc do
      @app.list_rentals
    end, 7 => end_hash }
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
    loop do
      display_menu
      option = gets.chomp.to_i

      puts @hash[option].call
      puts "\n"
    end
  end

  private

  def end_hash
    proc do
      puts 'Thank you for using this app!'
      exit
    end
  end
end

main = Main.new
main.run
