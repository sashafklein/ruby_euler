
class Fixnum

	# This is an EXTREMELY inefficient prime-finding method.
	# I later adopted a less homebrewed and more efficiency-conscious
	# version (see 10). This one's staying for posterity.
	def isPrime?
		div = self - 1
		while div >= 2
			return false if self % div == 0
			div -= 1
		end
		true
	end

	def greatestPrimeFactor
		num = Math.sqrt(self)
		div = 1
		prime = 0
		while div < num
			div += 1
			prime = div if self % div == 0 && div.isPrime?
		end
		return prime if prime != 0
		p "No Prime factors!"
	end

end

p 600851475143.greatestPrimeFactor