# Author: Olivia Eichenseer
# Program: scramble()
# Date: 9/13/2012
# 
# Homework 1, problem #2
# This is a Ruby method that randomly permutes a string. 
# ex. 
# 		>> scramble("Hello, world")
# 		=> "w,dlroH elol"
#
# NOTE: I actually found this solution while researching online, by Lorenzo E. Danielsson. I added in comments.
# The original web page can be found here: http://lorenzod8n.wordpress.com/2008/01/24/scrambling-words-in-ruby/

def scramble(str)
	s = str.split(//).sort_by { rand }.join(")	 # split the string into an array of characters, sort
												 # the characters randomly, and then join them back together
												 # into a string
	puts s
end