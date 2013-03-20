# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

require './reusable'

def amicables_up_to(limit)
	num = 1
	array = []
	while num < limit
		sum = proper_factors(num).inject(0) {|s, n| s + n}
		if proper_factors(sum).inject(0) {|s, n| s + n} == num
			if !array.include?(sum)
				if sum < limit && num < limit
					unless sum == num
						array << num
						array << sum
					end
				end
			end
		end
		num += 1
	end
	array
end

# 0.26 seconds
def answer(limit)
	start = Time.now
	sum = amicables_up_to(limit).inject(0) {|sum, num| sum + num}
	time = Time.now - start
	"The sum of the amicables under #{limit} is #{sum} -- #{time}"
end

puts answer(10000)