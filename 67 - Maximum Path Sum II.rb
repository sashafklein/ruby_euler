require './18 - Maximum Path Sum One'

triangle = open('triangle_2.txt').read.split("\n").map{ |line| line.split(" ").map{|e| e.to_i}}

puts sum_that_sucker(triangle) # takes 0.001636 seconds