module InWords

	def in_words

	  temp = self

	  if temp == 1000
	  	words = "one thousand"
	  else
		  huns = 0
		    if temp > 99
		      huns = temp / 100
		      temp = temp % 100
		    end
		  tens = 0
		    if temp > 9
		      tens = temp / 10
		      temp = temp % 10
		    end
		  ones = temp % 10

		  lows = { 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 
		         11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen" }

		  bases = { 2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety" }

		  words = ""

		  if self > 99
		    words = words + "#{ lows[huns] } hundred "
		  end

		  words += "and " if self > 100 && self % 100 != 0
		  
		  if tens < 2
		    words = words + "#{ lows[self % 100] }"
		  else
		    words = words + "#{ bases[tens] } #{ lows[ones] }"
		  end
		end

	  words

	end
end

class Fixnum

  include InWords

end