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
        loop do
          @app.run(display_menu)
        end
      end
end


main = Main.new
main.run

