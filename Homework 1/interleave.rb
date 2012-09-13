# Author: Olivia Eichenseer
# Program: interleave()
# Date: 9/13/2012
# 
# Homework 1, problem #5
# This is a Ruby method that interleaves two arrays. If the 
# arrays do not have the same length, the elements of the longer 
# array should end up at the end of the result array

def interleave(a, b)

	if a.size < b.size
		c = a.zip(b).flatten
		((a.size-1)..(b.size-1)).each {|x| c.push(b[x])}
		puts c
	else if a.size > b.size
		c = a.zip(b).flatten
		((b.size-1)..(a.size-1)).each {|x| c.push(a[x])}
		puts c
	else
		puts a.zip(b).flatten
		
	end
	
end