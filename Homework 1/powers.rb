# Author: Olivia Eichenseer
# Program: powers()
# Date: 9/13/2012
# 
# Homework 1, problem #4
# This is a Ruby generator method that yields powers powers of two 
# starting at 1 and going up to some limit.
# ex, in irb:
# 			>> powers(3, 400){|x| puts x}
# 			1
#			3
#			9
#			27
#			81
#			243
#			=> nil

def powers(b, lim)
	n, step = 0, 0;
	while n < lim
		if (b ** step) <= lim
			n, step = (b ** step), step+1
			puts n
		end
	end
end
