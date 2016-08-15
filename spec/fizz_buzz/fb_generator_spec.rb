require_relative '../../app/fizz_buzz/fb_generator'

RSpec.describe FbGenerator, type: :model do
  describe '#to_array_by_range' do
    it 'return 1 when input is 1' do
      expect(FbGenerator.to_array_by_range(1)).to eq(['1'])
    end

    it 'return [1, 2, Fizz] when input is 3' do
      expect(FbGenerator.to_array_by_range(3)).to eq(%w(1 2 Fizz))
    end

    it 'return [1, 2, Fizz, 4, Buzz] when input 5' do
      expect(FbGenerator.to_array_by_range(5)).to eq(%w(1 2 Fizz 4 Buzz))
    end

    it 'return Fizz when number is a multiple of 3 in range' do
      expect(FbGenerator.to_array_by_range(6)).to eq(%w(1 2 Fizz 4 Buzz Fizz))
    end

    it 'return Buzz when number is a multiple of 5 in range' do
      expect(FbGenerator.to_array_by_range(10)).to eq(%w(1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz))
    end

    it 'return Fizz when number is a common multiple of 3 in range or includes 3' do
      expect(FbGenerator.to_array_by_range(15)).to eq(%w(1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz Fizz 14 FizzBuzz))
    end

    it 'return Buzz when number is a common multiple of 5 in range or includes 5' do
      expect(FbGenerator.to_array_by_range(53, 48)).to eq(%w(Fizz 49 Buzz FizzBuzz Buzz FizzBuzz))
    end
  end
end
