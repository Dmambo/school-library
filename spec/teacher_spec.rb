require 'rspec'
require './teacher'

describe Teacher do
  let(:teacher) { Teacher.new('John Doe', 35, 'Math') }

  context '#initialize' do
    it 'should sets the age, name, and specialization' do
      expect(teacher.age).to eq(35)
      expect(teacher.name).to eq('John Doe')
      expect(teacher.instance_variable_get(:@specialization)).to eq('Math')
    end

    it 'should set the parent permission to true' do
      expect(teacher.instance_variable_get(:@parent_permission)).to eq(true)
    end

    it 'should generate an ID between 1 and 1000' do
      expect(teacher.instance_variable_get(:@id)).to be_between(1, 1000)
    end
  end

  context '#can_use_services?' do
    it 'should always returns true' do
      expect(teacher.can_use_services?).to eq(true)
    end
  end
end
