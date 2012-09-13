# Author: Olivia Eichenseer
# Program: powers_of_two()
# Date: 9/13/2012
# 
# Homework 1, problem #3
# This is a Ruby generator method that yields powers powers of two 
# starting at 1 and going up to some limit.
# ex, in irb:
# 			>> powers_of_two(70){|x| puts x}
# 			1
#			2
#			4
#			8
#			16
#			32
#			64
#			=> nil

def powers_of_two(lim)
	n, step = 0, 0
	while n < lim
		if (2 ** step) <= lim
			n, step = (2 ** step), step+1
			puts n
		end
	end
end