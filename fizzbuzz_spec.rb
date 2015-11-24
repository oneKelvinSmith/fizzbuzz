require 'rspec'
require_relative 'fizzbuzz'

RSpec.describe Fixnum do
  describe 'to_s' do
    it 'outputs "Fizz" when the number is divisible by 3' do
      expect(3.to_s).to eq 'Fizz'
      expect(42.to_s).to eq 'Fizz'
    end

    it 'outputs "Buzz" when the number is divisible by 5' do
      expect(5.to_s).to eq 'Buzz'
      expect(-25.to_s).to eq 'Buzz'
    end

    it 'outputs "FizzBuzz" when the number is divisible by 3 and 5' do
      expect(15.to_s).to eq 'FizzBuzz'
      expect(-30.to_s).to eq 'FizzBuzz'
    end

    it 'has the default behaviour in other cases' do
      expect(13.to_s).to eq '13'
      expect(-17.to_s).to eq '-17'
    end
  end
end
