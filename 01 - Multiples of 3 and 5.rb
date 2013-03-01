# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

multiples = (0...1000).select { |n| n % 5 == 0 || n % 3 == 0 }
puts multiples.inject(0) { |sum, n| sum + n }

# Or, more awesomely, but less clearly:
# p (0...1000).select { |n| n % 5 == 0 || n % 3 == 0 }.inject(0) { |sum, n| sum + n }