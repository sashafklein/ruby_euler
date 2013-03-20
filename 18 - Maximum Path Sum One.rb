# Assigns to "triangle" an with each row forming an 
# element (itself an array of numbers). 
triangle = open('triangle_1.txt').read.split("\n").map{ |line| line.split(" ").map{|e| e.to_i}}

# From the bottom up, replace each element of each row with the 
# sum of the maximum path below it. Results in a single row of 
# max sums.
def reduce_to_row(tri)
	while tri.length > 1
		tri[-2].each_with_index do |e, i|
			to_add = bigger(tri[-1][i], tri[-1][i+1])
			tri[-2][i] += to_add
		end
		tri.pop
	end	
	return tri[0]
end

# Returns the max sum when the final row has been reached
def max_sum(row)
	biggest = 0
	row.each do |e|
		biggest = e if e > biggest
	end
	biggest
end

def bigger(a,b)
	return a if a > b
	return b
end

def sum_that_sucker(tri)
	start = Time.now
	answer = max_sum(reduce_to_row(tri))
	time = Time.now - start
	"The maximum sum of the given triangle is #{answer} -- #{time}"
end

puts sum_that_sucker(triangle)