# Old Solution #
triplets = []
list = (1..1000)
list.each do |c|
	list.each do |b|
		list.each do |a|
			triplets << [a,b,c] if a*a + b*b == c*c && a + b + c == 1000
		end
	end
end

puts triplets[0].inject(1) { |product, multiple| product * multiple }

# New Solution
# n = 1000
# a = (1..1000 / 2).to_a.find { |a|
#   (1000 * (1000 / 2 - a) % (1000 - a)).zero?
# }
# b = 1000 * (1000 / 2 - a) / (1000 - a)
# puts "Product is #{a * b * (1000 - a - b)}."