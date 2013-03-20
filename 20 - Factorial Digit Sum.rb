# n! means n  (n  1)  ...  3  2  1

# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!


require './reusable'
# I put factorial and sum_digits in Reusable, 
# cause they seemed, well reusable.

def answer(num)
start = Time.now
puts "The sum of the digits of #{num}! is #{sum_digits(factorial(100))} -- #{Time.now - start}"
end

puts answer(100)