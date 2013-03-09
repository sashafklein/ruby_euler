class Fixnum
	def sum_of_squares
		sum = 0
		(0..self).map { |x| x * x }.each do |n|
			sum += n
		end
		sum
	end

	def square_of_sums
		sum = 0
		(0..self).each do |n|
			sum += n
		end
		sum * sum
	end
end

puts 100.square_of_sums - 100.sum_of_squares