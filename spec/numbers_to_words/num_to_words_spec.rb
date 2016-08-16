require_relative '../../app/numbers_to_words/num_to_words'

RSpec.describe NumFormatter, type: :model do

  describe '#split_to_segments' do
    {
        23409860645098 => [23, 409, 860, 645, 98],
        0 => [0],
        1000 => [1, 0],
        1600000123 => [1, 600, 0, 123],
    }.each do |key, value|
      it "should return #{value.to_s}" do
        result = NumFormatter.to_segments(key)
        expect(result).to eq(value)
      end
    end
  end

  describe '#to_words' do
    context 'when input < 999' do
      {
          0 => 'zero',
          1 => 'one',
          2 => 'two',
          12 => 'twelve',
          34 => 'thirty-four',
          50 => 'fifty',
          99 => 'ninety-nine',
          100 => 'one hundred',
          234 => 'two hundred thirty-four',
          999 => 'nine hundred ninety-nine',
      }.each do |key, value|
        it "should return #{value}" do
          result = NumFormatter.to_words(key)
          expect(result).to eq(value)
        end
      end
    end
  end

  describe '#num_to_words' do
    {
        0 => 'zero',
        5 => 'five',
        10 => 'ten',
        11 => 'eleven',
        50 => 'fifty',
        100 => 'one hundred',
        1000 => 'one thousand',
        12345 => 'twelve thousand, three hundred forty-five',
        1234567890 => 'one billion, two hundred thirty-four million, five hundred sixty-seven thousand, eight hundred ninety',
    }.each do |key, value|
      it "should return #{value}" do
        result = NumFormatter.num_to_words(key)
        expect(result).to eq(value)
      end
    end
  end

end