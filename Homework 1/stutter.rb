# Author: Olivia Eichenseer
# Program: stutter()
# Date: 9/13/2012
# 
# Homework 1, problem #6
# This is a Ruby method that doubles up each item in an array. 


def [a].stutter
	a2 = Array.new(a.size);
	a2 = a;
	puts a.zip(a2).flatten;
end
	