require 'minitest/autorun'
require_relative '../../app/numbers_to_words/num_to_words'

class NumToWords < Minitest::Test
  def test_that_it_return_num_to_words
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
      result = NumFormatter.num_to_words(key)
      assert_equal value, result
    end
  end
end