module FbGenerator
  def self.to_array_by_range(max, min=1)
    (min..max).map do |num|
      result = ''
      result += 'Fizz' if num % 3 == 0 || has_char_in?(num, 3)
      result += 'Buzz' if num % 5 == 0 || has_char_in?(num, 5)
      result == '' ? num.to_s : result
    end
  end

  private
  def self.has_char_in?(num, key_num)
    num.to_s.each_char do |char|
      return true if char == key_num.to_s
    end
    false
  end
end
