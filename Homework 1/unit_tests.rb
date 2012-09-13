# Author: Olivia Eichenseer
# Program: unit tests
# Date: 9/13/2012
# 
# Homework 1, problem #9
# Flesh out the unit test file for problems 1-6 

require 'test/unit'
require './misc.rb'

class String
	def is_permutation_of(other)
		self.split(//).sort == other.split(//).sort
	end
end

class TestUtil < Test::Unit::TestCase

	def test_strip_vowels()
		assert_equal(strip_vowels(""), "");
		assert_equal(strip_vowels("ouT"), "T");
		assert_equal(strip_vowels("HellO, World"), "Hll, Wrld")
		assert_equal(strip_vowels("12!ei8 hu"), "12!8 h")
		assert_equal(strip_vowels("jklm"), "jklm")
		assert_equal(strip_vowels("1aA, 2eE, 3iI, 4oO, 5uU"), "1, 2, 3, 4, 5")
		
	end
	
	def test_scramble()
		["", "a", "aaaa", "aaba", "abfswegwtewr"].each do |s|
			assert(s.is_permutation_of(scramble(s)))
		end
		assert(!"abc".is_permutation_of(scramble("aab")))
	end
	
	def test_powers_of_two()
		assert_equal(powers_of_two(70).to_a, [1, 2, 4, 8, 16, 32, 64])
	end
	
	def test_powers()
		assert_equal(powers(3, 400).to_a, [1, 3, 9, 27, 81, 243])
	end
	
	def test_interleave()
		assert_equal(interleave([1, 2], [nil, 5, 7, 10]), [1, nil, 2, 5, 7, 10])
		assert_equal(interleave([10, "dog", nil], ["one", 4, 3, 2]), [10, "one", "dog", 4, nil, 3, 2])
		assert_equal(interleave([nil], [1, 2, 3]), [nil, 1, 2, 3])
	end
	
	def test_stutter()
		assert_equal([1, 1].stutter, [1, 1, 1, 1]);
		assert_equal([1, 2, 3, 4].stutter, [1,1, 2, 2, 3, 3, 4, 4]);
		assert_equal([1, nil, "dog"].stutter, [1, 1, nil, nil, "dog", "dog"]);
	end

end