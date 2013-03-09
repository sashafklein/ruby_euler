# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# The inefficient, hacky, and much easier to code method with no 
# reliance on common prime factors:

limit = [20,19,18,17,16,14,13,11].inject(1) { |product, factor| product * factor }

class Fixnum
	def divis?
		set = (1..20)
		set.each do |n|
			return false if self % n != 0
		end
		true
	end
end

unit = 20 * 17 * 18 * 13 * 11
temp = limit
last = limit
while temp > unit
	temp -= unit
	last = temp if temp.divis? && temp < last
end 

puts last

#-------------------------------------------------------------------------------#

# The method that feels more correct, maybe because it's more complicated
# and seems more mathy. It is more efficient, I believe (having not benchmarked)
# and relies on prime factorization.

# Returns an array of arrays. In the inner array, the first item is
# the prime factor, and the second is the power to which it must be
# raised (determined by the highest power at which it occurs) in the
# original list of numbers (1-20).
def primeFactorsOfArray(array)
	redundant = [] # An array of arrays of arrays -- unedited list of 
	               # all prime factors. ex: [8,24]: [[[2,3]],[[2,3],[3,1]]
	array.each do |orig|
		redundant << primeFactors(orig)
  end
  # p redundant
  efficient(redundant)
end

# Returns the prime factors of a given number, in array form.
# Format: [[factor1, power],[f2, p],...]
# Ex: 24 => [[2,3],[3,1]]
def primeFactors(num)
  return [[num, 1]] if isPrime(num)
	factors = []
  divisors = 2.upto(num).select { |num| isPrime(num) }
  divisors.each do |div|
  	count = 0
    while num % div == 0 && num != 0
    	num = num / div
    	count += 1
    end
    factors << [div, count] if count > 0
  end
  factors	
end

# Determines whether the given number is prime
def isPrime(num)
	div = num - 1
	while div >= 2
		return false if num % div == 0
		div -= 1
	end
	true
end

# Turns the large array of all common prime factors into the 
# lean version that, when multiplied, gives the answer.
def efficient(array)
	final = []
	competitors = {}
		array.each do |i|
			if competitors[i[0][0]] # If the factor exists find the right power.
				competitors[i[0][0]] = i[0][1] if i[0][1] > competitors[i[0][0]]
			else # Add it to the list
				competitors[i[0][0]] = i[0][1]
			end
		end
	competitors.each do |key, value|
		final << [key, value]
	end
	final	
end

multiplied = []
primeFactorsOfArray((1..20).to_a).each do |i|
	multiplied << i[0] ** i[1]
end

puts multiplied.inject(1) { |prod, factor| prod * factor }