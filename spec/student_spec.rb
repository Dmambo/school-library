require 'rspec'
require './rental'
require './book'
require './person'
require './student'

describe Student do
    let(:person) { Person.new('Alice', 25, true) }
    let(:book) { Book.new('Harry Potter', 'J.K. Rowling') }

  context '#initialize' do
    it 'should create a new person instance with the given age and name' do
      expect(person.age).to eq(25)
      expect(person.name).to eq('Alice')
    end

    it 'should set the parent_permission attribute to true by default' do
      expect(person.instance_variable_get(:@parent_permission)).to eq(true)
    end

    it 'should generate a random ID between 1 and 1000' do
      expect(person.id).to be_between(1, 1000)
    end

    it 'should initialize an empty array for rentals' do
      expect(person.rentals).to eq([])
    end
  end

  context '#add_rental' do
    it 'should add a new rental to the rentals array' do
      date = '2022/3/15'
      person.add_rental(book, date)

      expect(person.rentals.size).to eq(1)
      expect(person.rentals.first.date).to eq(date)
      expect(person.rentals.first.book).to eq(book)
      expect(person.rentals.first.person).to eq(person)
    end
  end
end
