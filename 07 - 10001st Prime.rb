class Fixnum
	
	def isPrime?
		div = self - 1
		while div >= 2
			return false if self % div == 0
			div -= 1
		end
		true
	end

	def thPrime
		list = []
		num = 2
		while list.length < self
			list << num if num.isPrime?
			num += 1
		end
		list.join(", ")
	end
end

puts 10001.thPrime