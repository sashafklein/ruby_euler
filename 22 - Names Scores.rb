# Using names.txt , a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.
# What is the total of all the name scores in the file?

def alphabet_score(name)
	name.split("").map{ |letter| score(letter)}.inject(0){ |s,n| s + n }
end

def score(letter)
	letter[0].ord - 64
end

def total_score(name, adjusted_index)
	alphabet_score(name) * adjusted_index
end

def answer
	start = Time.now
	sorted = open('names.txt').read.split(",").map{|w| w.gsub(/["]/, "")}.sort
	sum = 0
	sorted.each_with_index do |n, i|
		total = total_score(n, (i + 1))
		sum += total
		puts "#{n} #{i + 1}, #{alphabet_score(n)}, sum + #{total} = #{sum}"
	end
	"The total score of the name list is #{sum} -- #{Time.now - start}"
end

puts answer