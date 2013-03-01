def eratosthenes(n)
  nums = [0, 0] + (2..n).to_a
  (2..Math.sqrt(n).to_i).each do |i|
    if nums[i].nonzero?
      (i**2..n).step(i) {|m| nums[m] = 0}
    end
  end
  nums.find_all {|m| m.nonzero?}
end
 
def sum(array)
	sum = 0
	array.each do |n|
		sum += n
	end
	sum
end

p sum(eratosthenes(2000000))