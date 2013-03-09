# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.


class Fixnum

	def pal?
		self.to_s == self.to_s.reverse
	end

end

# Limited scope for speed, assuming multiples were above 900.
largest = 0
900.upto(999).each do |i|
	900.upto(999).each do |j|
		largest = (i * j) if (i * j).pal? && (i * j) > largest
	end
end

puts largest
