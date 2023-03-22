require 'json'
require 'rspec'
require './book'
require './rental'
require './person'
require 'date'

describe Book do
  let(:person) { Person.new(18, 'John Doe', true) }
  let(:book) { Book.new('title', 'author') }

  context '#add_rental' do
    it 'should add a rental to the rentals array' do
      expect do
        book.add_rental('1999/12/12', person)
      end.to change { book.rentals.count }.by(1)
    end
  end

  context '#rentals' do
    it 'should return an array of rentals' do
      expect(book.rentals).to be_a(Array)
    end
  end

  context '#to_s' do
    it 'should return a string' do
      expect(book.to_s).to be_a(String)
    end
  end
end
