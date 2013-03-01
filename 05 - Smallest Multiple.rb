
limit = 1
[20,19,18,17,16,14,13,11].each do |n|
	limit *= n
end

class Fixnum
	def divis?
		set = (1..20)
		set.each do |n|
			return false if self % n != 0
		end
		true
	end
end

unit = 20 * 17 * 18 * 13 * 11
temp = limit
last = limit
while temp > unit
	temp -= unit
	last = temp if temp.divis? && temp < last
end 

puts last