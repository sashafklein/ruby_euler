max = 1000
range = (0...max)
sum = 0
range.each do |n|
	sum += n if n % 5 == 0 || n % 3 == 0
end
puts sum