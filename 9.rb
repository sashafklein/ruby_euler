
triplets = []
list = (1..1000)
list.each do |c|
	list.each do |b|
		list.each do |a|
			puts "#{a} #{b} #{c}" if a*a + b*b == c*c && a + b + c == 1000
		end
	end
end

puts 375 * 425 * 200
