require './rental'
require './book'
require './person'
require 'json'

RSpec.describe Rental do
  let(:book) { Book.new('The Great Gatsby', 'F. Scott Fitzgerald') }
  let(:person) { Person.new('John Doe', 23, true) }
  let(:rental) { Rental.new(book, person,'2023-03-16') }

  describe '#initialize' do
    it 'sets the date attribute' do
      expect(rental.date).to eq '2023-03-16'
    end

    it 'sets the book attribute' do
      expect(rental.book).to eq book
    end

    it "adds the rental to the book's rentals array" do
      expect(book.rentals).to include rental
    end

    it 'sets the person attribute' do
      expect(rental.person).to eq person
    end

    it "adds the rental to the person's rentals array" do
      expect(person.rentals).to include rental
    end

    it "does not add the rental to the person's rentals array if it already exists" do
      Rental.new(book, person, '2023-03-16')
      expect(person.rentals.count).to eq 1
    end
  end

  describe '#to_s' do
    it 'returns a string' do
      expect(rental.to_s).to be_a String
    end

    # it 'returns a string with the correct date' do
    #   expect(rental.to_s).to include '2023-03-16'
    # end
  end
end
