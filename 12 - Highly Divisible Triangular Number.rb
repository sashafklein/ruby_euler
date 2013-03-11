# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
# What is the value of the first triangle number to have over five hundred divisors?


#-------------------------#
# Takes 
# I inspected the first 400, and saw that multiples of 12
# tended to be the longest, so I replaced my triangle method 
# with a simple array of multiples of twelve
#-------------------------#

require './reusable'

def nthTriangle(n)
 n * (n + 1) / 2
end

def answer(n)
	i = 1
	while true
		triangle = nthTriangle(i)
		# Assuming all numbers with many factors are even, to save time.
		if triangle % 2 == 0
			factors = factors(triangle).length
			return "#{triangle} is triangle number #{i}, with #{factors} factors." if factors > n
		end
		i += 1
	end
end

puts answer(500)