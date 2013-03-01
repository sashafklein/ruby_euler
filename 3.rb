class Fixnum

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
		"No Prime factors!"
	end

end

puts 600851475143.greatestPrimeFactor