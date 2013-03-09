#---------- Old Way - takes a few seconds -----------#
class Fixnum	
	def isPrime?
		div = Math.sqrt(self).floor
		while div >= 2
			return false if self % div == 0
			div -= 1
		end
		true
	end

	def stPrime
		list = []
		num = 2
		while list.length < self
			list << num if num.isPrime?
			num += 1
		end
		list
	end
end

puts 10001.stPrime.sort[-1]

#---------- New way - eratosthenes-enabled -----------#
# The twelve is an estimate for speed of avg prime distance #
def primeNumber(n)
	all = [0, 0] + (2..12*n).to_a
	(2..Math.sqrt(12*n).to_i).to_a.each do |i|
		(i**2..12*n).step(i) { |nonprime| all[nonprime] = 0 } if all[i].nonzero?
	end
	prime_list = all.find_all { |candidate| candidate.nonzero? }
	prime_list[n-1]
end

puts primeNumber(10001)