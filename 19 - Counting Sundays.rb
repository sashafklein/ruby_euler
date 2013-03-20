# You are given the following information, but you may prefer to do some research for yourself.

# - 1 Jan 1900 was a Monday.
# - Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
# - A leap year occurs on any year evenly divisible by 4, 
#   but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

@days = 0
@sundays = 0
@end_year = 2000

# Returns the days in the given month (based on year)
def days_in_month(month, year)
	if month == 9 || month == 11 || month == 4 || month == 6
		return 30
	elsif month != 2
		return 31
	else
		return 28 unless leap_year?(year)
		return 29
	end
end

# Returns whether or not a year is a leap year
def leap_year?(year)
	if year % 400 == 0
		return true
	elsif year % 100 == 0
		return false
	elsif year % 4 == 0
		return true
	else
		return false
	end
end

# Checks (based on distance from Jan 1, 1900)
# The number of 
def check_first_for_sunday(m,y)
	@sundays += 1 if (@days + 1) % 7 == 0
	@days += days_in_month(m,y)
end

start = Time.now

1900.upto(@end_year).each do |y|
	1.upto(12).each do |m|
		check_first_for_sunday(m, y)
	end
end

# There are 2 first-of-month Sundays in 1900 that must  
# be discounted. This seemed like a manual, rather than coding,
# problem.
@sundays = @sundays - 2
time = Time.now - start

puts "#{@sundays} Sundays fall on the first of the month from 1901 through #{@end_year} -- #{time}"
