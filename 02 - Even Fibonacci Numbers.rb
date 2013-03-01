max = 4000000
first = 1
second = 2
sum = 0

sequence = [first]

while second < max
	temp = first
	first = second
	second += temp
	sequence << first
end

sequence.each do |e|
	sum += e if e % 2 == 0
end

puts sum
puts sequence