@flat = open('square.txt').read.split(" ").map{ |x| x.to_i }

@largest = 0
@array = []

def horiz(num)
	# Make sure num isn't within three of the right edge
	if num % 20 + 2 < 19
		# Mult that number by the three to its right
		test = @flat[num] * @flat[num+1] * @flat[num+2] * @flat[num+3] 
		if @largest < test
			@largest = test 
			@array = [@flat[num] , @flat[num+1] , @flat[num+2] , @flat[num+3]]
		end
	end
end

def vert(num)
	# Make sure num isn't within three of the bottom edge
	if num < 340
		# Mult that number by the three to its right
		test = @flat[num] * @flat[num+20] * @flat[num+40] * @flat[num+60]
		if @largest < test
			@largest = test 
			@array = [@flat[num] , @flat[num+20] , @flat[num+40] , @flat[num+60]]
		end
	end
end

def diaga(num)
	# Make sure num isn't within three of the bottom/right
	if num < 340
		if num % 20 + 2 < 19
			# Mult that number by its three down-right diagonals
			test = @flat[num] * @flat[num+21] * @flat[num+42] * @flat[num+63]
			if @largest < test
				@largest = test 
				@array = [@flat[num] , @flat[num+21] , @flat[num+42] , @flat[num+63]]
			end
		end
	end
end

def diagb(num)
	# Make sure num isn't within three of the bottom/left
	if num < 340
		if num % 20 > 3
			# Mult that number by its three down-right diagonals
			test = @flat[num] * @flat[num+19] * @flat[num+38] * @flat[num+57]
			if @largest < test
				@largest = test 
				@array = [@flat[num] , @flat[num+19] , @flat[num+38] , @flat[num+57]]
			end
		end
	end
end

(0...399).each do |e|
	horiz(e)
	vert(e)
	diaga(e)
	diagb(e)
end

puts @array
puts @largest
