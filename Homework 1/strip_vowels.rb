# Author: Olivia Eichenseer
# Program: strip_vowels()
# Date: 9/13/2012
# 
# Homework 1, problem #1
# This is a Ruby method which takes in a string s and returns a 
# string that is equivalent to s but with all ASCII vowels removed. 
# ex. 
# 		>> strip_vowels("Hello, world")
# 		=> "Hll, wrld"

def strip_vowels(s)
	puts s.delete "aeiouAEIOU"
end