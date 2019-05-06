require 'rspec'

class ChangeMachine
  def change (number)
    change_array = []
    if number % 5 == 0
      change_array << 5 
    elsif number 
      
    else  
      number.times do
        change_array << 1
      end
    end 

     return change_array
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] if given 1' do
      change_machine = ChangeMachine.new
      result = change_machine.change(1)
      expect(result).to eq([1])
    end  
end

describe '#change' do
    it 'should return [1,1] if given 2' do
      change_machine = ChangeMachine.new
      result = change_machine.change(2)
      expect(result).to eq([1,1])
    end  
end
describe '#change' do
    it 'should return [5] if given 6' do
      change_machine = ChangeMachine.new
      result = change_machine.change(5)
      expect(result).to eq([5])
    end  
end
describe '#change' do
    it 'should return [5,1] if given 6' do
      change_machine = ChangeMachine.new
      result = change_machine.change(6)
      expect(result).to eq([5,1])
    end  
end
end 