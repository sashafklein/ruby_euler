require './inWords'

# The behind the scenes magic is in my inWords library.
# Suppose there's probably a Ruby library for this, but I'd already done it.
# 0.01 seconds
def addUpWordsTo(n)
  start = Time.now
  smushed_num_array = 1.upto(n).map { |i| i.in_words }.map{ |sent| sent.split(" ").join }
  total = smushed_num_array.inject(0) {|sum, blob| sum + blob.length }
  time = Time.now - start
  "There are #{total} characters in the word forms of all the numbers from 1 to #{n} - #{time}"
end

puts addUpWordsTo(1000)