# This solution is really slow. To be fixed.

class Fixnum

	def pal?
		array = self.to_s.split("")
		while array.length > 1
			if array[0] == array[-1]
				array.shift
				array.pop
			elsif array.length == 1
				return true
			else array.empty?
				return false
			end
		end	
		true
	end

end

list = []
(100...1000).each do |i|
	(100...1000).each do |j|
		list << (i * j) if (i * j).pal?
	end
end

puts list.sort[-1]
