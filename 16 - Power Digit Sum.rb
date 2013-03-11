# What is the sum of the digits of 2^1000?
# Took 3 thousandths of a second.

# In a method just for timing/display ease
def answer(n)
	start = Time.now
	sum = (2 ** n).to_s.split("").map{ |i| i.to_i }.inject(0) {|s,n| s + n}
	time = Time.now - start
	return "The sum of the digits of 2 raised to the #{n} is #{sum} - #{time}"
end

puts answer(1000)