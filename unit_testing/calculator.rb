require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end 
  describe '#subtract' do
    it 'should return the result of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(3, 2)
      expect(result).to eq(1)
    end
  end
  describe '#multiply' do
    it 'should return the result of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5, 2)
      expect(result).to eq(10)
    end
  end
  describe '#divide' do
    it 'should return the result of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(20, 2)
      expect(result).to eq(10)
    end
  end
  describe '#square' do
    it 'should return the square of one number' do
      calculator = Calculator.new
      result = calculator.square(2)
      expect(result).to eq(4)
    end
  end
  
end