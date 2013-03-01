# Fills an array with all the primes less than n
def eratosthenes(n)
  nums = [0, 0] + (2..n).to_a
  (2..Math.sqrt(n).to_i).each do |i|
    if nums[i].nonzero?
      (i**2..n).step(i) {|m| nums[m] = 0}
    end
  end
  nums.find_all {|m| m.nonzero?}
end

# Prints the sum of the members of the eratosthenes array
p eratosthenes(2000000).inject{ |sum,x| sum + x }

deleted:    2 - Even Fibonacci Numbers.rb
#	deleted:    3 - Largest Prime Factor.rb
#	deleted:    4 - Largest Palindrome Product.rb
#	deleted:    5 - Smallest Multiple.rb
#	deleted:    6 - Sum Square Difference.rb
#	deleted:    7 - 10001st Prime.rb
#	deleted:    8 - Largest Product in a Series.rb
#	deleted:    9 - Special Pythagorean Triplet.rb