
def list_digits(input)
  string = input.to_s
  integer_list = string.split('').map do |digit|
    digit.to_i
  end
  {input => integer_list}
end

def next_palindrome(input)
  digit_and_list = list_digits(input)
  digits = digit_and_list.values.first
  require 'pry'; binding.pry
  digits
end

next_palindrome(101)
