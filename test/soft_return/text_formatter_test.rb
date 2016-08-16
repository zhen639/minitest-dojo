require 'minitest/autorun'
require_relative '../../app/soft_return/text_formatter'

class TextFormatterTest <  Minitest::Test
  def test_that_it_break_down_text_into_lines_by_width
    text = 'These is an apple I want to eat!'
    assert_equal "These is\nan apple I\nwant to\neat!\n", TextFormatter.soft_return(text, 10)
    assert_equal "These\nis an\napple\nI\nwant\nto\neat!\n", TextFormatter.soft_return(text, 5)
  end
end