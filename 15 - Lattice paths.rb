# Gives the number of paths accross a n-by-n lattice
# Based on Pascal's Triangle logic.
# Got there after diagramming all the solutions for 3x3 and 4x4, looking for patterns.
# Took 8.8e-05 seconds to process, and a LONG time to think through.
def paths(n)
	start = Time.now
	row = Array.new(n+1){1}

	n.times do
		(1..n).each do |i|
			# Effects a Pascal-style addition of each number at each corner
			# to produce the final number of paths hitting the end.
			row[i] = row[i] + row[i-1] 
		end
	end
	time = Time.now - start
	return "A #{n} by #{n} grid has #{row[-1]} paths -- #{time}"
end

puts paths(20)