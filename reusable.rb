def primesUpTo(n)
  nums = [0, 0] + (2..n).to_a
  (2..(sqrt(n).to_i + 1)).each do |i|
    if nums[i].nonzero?
      ((i ** 2)..n).step(i) {|m| nums[m] = 0}
    end
  end
  nums.find_all {|m| m.nonzero?}
end

def prime?(n)
	test = primesUpTo(sqrt(n).to_i)
	test.each do |i|
		if n % i == 0
			return false
		end
	end
	true
end

def sum(array)
	array.inject(0) {|s, n| s + n }
end

def product(array)
	array.inject(1) {|p, n| p * n}
end

def sqrt(n)
	Math.sqrt(n)
end

# Returns an array of arrays of the prime factors of num
# Form [[factor1, power1],[factor2, power2]]
# Ex: primeFactors(12) == [[2,2],[3,1]]
def primeFactors(n)
	array = []
	# 2 3 
	primesUpTo((n/2).to_i+1).select{ |i| n % i == 0 }.each do |p|
		pcount = 1
		n = n / p
		while n % p == 0
			pcount += 1
			n = n / p
		end
		array << [p, pcount]
	end
	array
end

# Returns an unsorted list of factors of n
# INCLUDES 1 and n 
def factors(n)
	array = []
	1.upto(sqrt(n)).each do |f|
		if n % f == 0
			array << f 
			array << n/f if f != n / f
		end
	end
	array
end