# Which starting number, under one million, produces the longest Collatz chain?

# Returns the length of the collatz chain begun by n
def collatz(n)
	l = 1
	while true
		return l if n == 1
		if n % 2 == 0
			n /= 2
			l += 1
		else
			n = 3 * n + 1
			l += 1
		end
	end
end

def largestCollatz(limit)
	start = Time.now
	chain = 0
	num = 0
	1.upto(limit).each do |n|
		col = collatz(n)
		if col > chain
			num = n
			chain = col
		end
	end
	finish = Time.now
	return "The largest chain under #{limit} started by #{num} and is #{chain} long -- #{finish - start}"
end

# Works in 9.78 seconds
puts largestCollatz(1000000)

puts 20**2
