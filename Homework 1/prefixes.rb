# Author: Olivia Eichenseer
# Program: prefixes.rb
# Date: 9/13/2012
# 
# Homework 1, problem #7
# 	This is a Ruby script (in the file prefixes.rb) that writes successive prefixes 
# 	of its first input argument, one per line, starting with the first prefix, which 
# 	is zero characters long. For example: 

s = ARGV[0].to_s;
step = 0;

puts "";
while step < s.length
	puts s[0..step];
	step = step + 1;
end