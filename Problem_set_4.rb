# Write a method that takes an array of words and returns only the words that are
# anagrams of a given string.

def anagrams(string, array)

	string_splitted = string.split("")
	array_of_anagrams = []

	array.each do |word|

		current_splitted_word = word.split("")

		if current_splitted_word.length == string_splitted.length
			i = 0
			counter = 0

			while i < string_splitted.length

			  if current_splitted_word.include?(string_splitted[i])
			  	counter += 1
			  end

			i += 1
		 end

		 if counter == string_splitted.length
		 	array_of_anagrams << current_splitted_word.join
		 end
	 end
	end
 array_of_anagrams
end

#Tests
puts "\nAnagrams:\n" + "*" * 15 + "\n"
puts anagrams("cat", ["cat"]) == ["cat"]
words = ["cat", "act", "bat", "tac"]
puts anagrams("tca", words) == ["cat", "act", "tac"]
words = ["aaa", "aa", "a"]
puts anagrams("aa", words) == ["aa"]


# ************************************
# Write a boolean function that returns true if the vowels in a given word appear in order

def ordered_vowel_word?(word)

	splitted_word = word.split("")

	splitted_word.each do |letter|

		if letter != "a" || "e" || "i" || "o" || "u" || "y"
		  splitted_word.delete(letter)
	  end

	end
	sorted_word = splitted_word.sort
	splitted_word == sorted_word
end

#Tests
puts "\nOrdered Vowel Word:\n" + "*" * 15 + "\n"
puts ordered_vowel_word?("car") == true
puts ordered_vowel_word?("academy") == true
puts ordered_vowel_word?("programmer") == false
puts ordered_vowel_word?("grapefruit") == false
# ************************************
# Write a function that takes an array of words and returns the words whose vowels appear in order

def ordered?(word)
	splitted_word = word.split("")
	vowels = ["a","e","i","o","u","y"]
	new_word = []

  splitted_word.each {|letter| new_word << letter if vowels.include?(letter)}
  new_word.sort == new_word

end

def ordered_vowels(words)

	new_array = []
	words.each { |word| new_array << word if ordered?(word) }
	new_array

end

puts "\nOrdered Vowels:\n" + "*" * 15 + "\n"
puts ordered_vowels(["are"]) == ["are"]
puts ordered_vowels(["era", "are", "ear"]) == ["are"]
puts ordered_vowels(["hey", "wassup", "hello"]) == ["hey", "wassup", "hello"]
puts ordered_vowels(["firefox", "chrome", "safari", "netscape", "aeiou"]) == ["safari", "aeiou"]

# ************************************
# Write a function that takes two years and returns all the years within that range with no repeated digits.
# Hint: helper method?
# no_repeat_years(2010,2015) -> [2013,2014,2015]
def repeat?(number)
	new_number = number.to_s.split("")
	new_number.uniq.length == new_number.length
end

def no_repeat_years(first_year, last_year)

	new_arr = []
	results = []
	i = 0

	(first_year..last_year).each { |num| new_arr << num }

	while i < new_arr.length
	  	results << new_arr[i] if repeat?(new_arr[i])
	  i += 1
  end

  results
end

puts "\nNo Repeat Years:\n" + "*" * 15 + "\n"
puts no_repeat_years(1990, 2000) == []
puts no_repeat_years(1900,1902) == [1902]
puts no_repeat_years(2016, 2020) == [2016, 2017, 2018, 2019]


# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns the letter that occurs most frequently.
# Use a hash within your method to keep track of the letter counts.  You will need to account for spaces.  There are a few ways you can do this.

def most_frequent_letter(string)

	alpha_count = Hash.new 0
	string_splitted = string.delete(" ").split("")

	string_splitted.each { |letter| alpha_count[letter] += 1 }

  most_letter = []
  most_count = 0

  alpha_count.each do |letter, number|

  	if number > most_count
  		most_count = number
  		most_letter = letter
  	end

  end
  most_letter
end

puts "\nMost Frequent Letter\n" + "*" * 15 + "\n"
puts most_frequent_letter("aaaaa") == "a"
puts most_frequent_letter("aaaaabbbbbb") == "b"
puts most_frequent_letter("we the people in order to form a more perfect union") == "e"


# ************************************
# Write a method that takes a string of lower case words (no punctuation) and returns an array of letters that occur more
# than once.  We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def non_unique_letters(string)
	splitted_string = string.delete(" ").split("")

	count = Hash.new 0
	new_arr = []

	splitted_string.each { |letter| count[letter] += 1 }
	count.each { |k,v| new_arr << k if v > 1 }
  new_arr

end

puts "\nNon-Unique Letters\n" + "*" * 15 + "\n"
puts non_unique_letters("abbbcdddde") == ["b", "d"]
puts non_unique_letters("abcde") == []
puts non_unique_letters("aabbccddee") == ["a", "b", "c", "d", "e"]
puts non_unique_letters("aaa bbb c d eee") == ["a", "b", "e"]

# ************************************
# Write a method that takes a string of lower case words and returns an array of letters that do not occur in the string.
# This problem requires a different approach from the one we used in most_frequent_letter and we will need to show some care
# in how we set up the hash or process it to get the result.  Do you see why?
# We'll need to account for spaces, too.  Again, there are a few ways you can do this.

def missing_letters(string)
	alpha_hash = Hash.new 0
	results = []

	("a".."z").each {|letter| alpha_hash[letter] = 0 }
	string_splitted = string.delete(" ").split("")
	string_splitted.each { |letter| alpha_hash[letter] += 1 }

	alpha_hash.each { |letter, value| results << letter if value == 0 }
	results
end

puts "\nMissing Letters\n" + "*" * 15 + "\n"
puts missing_letters("abcdefghijklmnopqrstuvwxyz") == []
puts missing_letters("abcdefghiklmnopqrstuvwxyz") == ["j"]
puts missing_letters("abcdefghiklmnopstuvwxyz") == ["j", "q", "r"]

#write a function primes that an arguement n and returns the first n primes

def is_prime?(num)

  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true

end

def primes(n)

results = []
i = 2

  until results.length == n
    results << i if is_prime?(i)
    i += 1
  end
  results
end

puts "\nPrimes:\n" + "*" * 15 + "\n"
puts primes(0) == []
puts primes(1) == [2]
puts primes(2) == [2,3]
puts primes(6) == [2,3,5,7,11,13]

#write a boolean function zero_sum? that takes an array of intergers and returns
#true if 2 elements in the array sum to zero.

# NOTE: For this question, do the "write out the variables" exercise from part 4 after
# you've written a first draft.

def zero_sum?(array)

	current_number = []
	current_num = []
	current_array = []
	i = 0

	while i < array.length
	 current_number = array[i]

		array.each do |num|
		 current_num = num

			current_array << current_number + num
	  end

	 i += 1
  end

  if array.count(0) == 1
   current_array.count(0) >= 2
  else
   current_array.include?(0)
  end

end

puts "\nZero Sum:\n" + "*" * 15 + "\n"
puts zero_sum?([1, -1]) == true
puts zero_sum?([1,1,0,2,1]) == false
puts zero_sum?([1,1,0,2,1,0]) == true
puts zero_sum?([2,3,4,-3,1]) == true

#write a function largest_sum_pair that takes an array of intergers and returns the
#2 unique indices whose elements sum to the largest number. Formatted [earlier_index, later_index]

# NOTE: For this question, do the "write out the variables" exercise from part 4 after
# you've written a first draft.

def largest_sum_pair(array)

  nums_arr = []
	nums_idx = []

	array.each_with_index { |num, num_idx| nums_idx << num_idx if num == array.max }

  if nums_idx.length == 1
		array.delete_at(nums_idx[0])
		array.each_with_index { |num, num_idx| nums_idx << num_idx if num == array.max }
	end
	nums_idx.sort
end

puts "\nLargest Sum Pair:\n" + "*" * 15 + "\n"
puts largest_sum_pair([1,2,3,4,5]) == [3,4]
puts largest_sum_pair([3,2,1,0,1,2,3]) == [0,6]
puts largest_sum_pair([-2,-1,-1,-2,-3]) == [1,2]
