require 'minitest/autorun'
require_relative '../../app/fizz_buzz/fb_generator'

class FbGeneratorTest <  Minitest::Test
  def test_that_it_return_array_when_input_is_number
    assert_equal ['1'], FbGenerator.to_array_by_range(1)
    assert_equal %w(1 2 Fizz), FbGenerator.to_array_by_range(3)
    assert_equal %w(1 2 Fizz 4 Buzz), FbGenerator.to_array_by_range(5)
  end

  def test_that_return_Fizz_when_number_is_a_multiple_of_3_in_range
    assert_equal %w(1 2 Fizz 4 Buzz Fizz), FbGenerator.to_array_by_range(6)
  end
end