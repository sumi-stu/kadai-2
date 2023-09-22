
# kadai-2 "FizzBuzz"

def FizzBuzz(num)
  if num % 3 == 0 && num % 5 == 0
    return "FizzBuzz"
  elsif num % 3 == 0
    return "Fizz"
  elsif num % 5 == 0
    return "Buzz"
  else
    return num
  end
end

=begin
puts FizzBuzz(1)
puts FizzBuzz(3)
puts FizzBuzz(5)
puts FizzBuzz(15)
=end

num_max = 100

(1..num_max).each do |number|
  puts FizzBuzz(number)
end
