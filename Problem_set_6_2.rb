# chunk an array into nested arrays of length n
def chunk(array, n)
	
 results = []
 array.each_slice(n) { |a| results.push(a) }
 results
 
end

puts "---------chunk-------"
puts chunk([1, 8, 9, 4, "hey", "there"], 2) == [[1, 8], [9, 4], ["hey", "there"]]
puts chunk([10, 9, 8, 7, 6, 5, 4], 3) == [[10, 9, 8], [7, 6, 5], [4]]

# Translate into pig-latin! First consonants go to the end of a word. End with "ay"

def vowel?(letter)
	
	arr = ["a","e","i","o","u","y"]
	arr.include?(letter)
	
end

def latinize(word)
	 
	 sp_word = word.split("")
	 vowel_idx = []
	 ending = ""
	 beginning = ""
	 latinized_word = ""
	 sp_word.each {|letter| vowel_idx << sp_word.index(letter) if vowel?(letter)}

	 
	 if vowel_idx.include?(0)
	   latinized_word = sp_word.join + "ay"
	 else
	   ending = sp_word[0..vowel_idx.first - 1].join
	   beginning = sp_word[vowel_idx.first..sp_word.length].join
	   latinized_word = beginning + ending + "ay"
	 end
     latinized_word
end	


def pig_latin(sentence)
	
	sp_sent = sentence.split(" ")
	pig_latin_sentence = []
# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself 15 minutes per problem.  When time is up, make sure you don't
# have any unexpected `end`s or infinite loops that would keep your code from
# running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------

# Word With Most Repeats
# ------------------------------------------------------------------------------
# Given a sentence, find which word has the greatest amount of repeated letters.
#
# For example, "I took the road less traveled and that has made all the difference"
# should return "difference" because it has two repeated letters (f and e).
#
# All words will be separated by spaces and there will be no punctuation or
# capitalization.  If there is a tie return the first word.  It doesn't matter
# how many times individual letters repeat, just that they repeat (see the third test
# case).

def letter_repeats(word)
	
	sp_word = word.split("")
	letters_n_repeats = Hash.new 0
	count = []
	sp_word.each { |letter| letters_n_repeats[letter] += 1 }
	
	letters_n_repeats.each_value {|value| count << value}
	count.select {|num| num > 1}.length
	
end

def word_with_most_repeats(sentence)
	
	sp_sent = sentence.split(" ")
	current_most = 0
	current_word = ""
	
	sp_sent.each do |word|
	
	  if letter_repeats(word) > current_most
	  	current_most = letter_repeats(word)
	  	current_word = word
	  end
	  
	end
	
	current_word
	
end

puts "-------Word With Most Repeats-------"
puts word_with_most_repeats('good luck') == 'good'
puts word_with_most_repeats('what if there is a tie betwixt words') == 'there'
puts word_with_most_repeats('ooooooooooh tutu') == 'tutu'


# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  #
  # your code goes here
  #
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]


# Isogram Matcher
# ------------------------------------------------------------------------------
# An isogram is a word with only unique, non-repeating letters. Given two isograms
# of the same length, return an array with two numbers indicating matches:
# the first number is the number of letters matched in both words at the same position,
# and the second is the number of letters matched in both words but not in the
# same position.

def isogram_matcher(isogram1, isogram2)
  #
  # your code goes here
  #
end

puts "-------Isogram Matcher-------"
puts isogram_matcher("an", "at") == [1, 0]
puts isogram_matcher("or", "go") == [0, 1]
puts isogram_matcher("cat", "car") == [2, 0]
puts isogram_matcher("cat", "tap") == [1, 1]
puts isogram_matcher("home", "dome") == [3, 0]
puts isogram_matcher("gains", "snake") == [0, 3]
puts isogram_matcher("glamourize", "blueprints") == [1, 4]
puts isogram_matcher("ultrasonic", "ostracized") == [3, 4]
puts isogram_matcher("unpredictably", "hydromagnetic") == [1, 8]


# Xbonacci
# ------------------------------------------------------------------------------

# Write a Xbonacci function that works similarly to the fibonacci sequence.
# The fibonacci sequence takes the last two numbers in the sequence and adds
# them together to create the next number.
#
# First five fibonacci numbers = [1, 1, 2, 3, 5]
# The fourth fibonacci number (3) is the sum of the two numbers before it
# (1 and 2).
#
# In Xbonacci, the sum of the last X numbers (instead of the last 2 numbers)
# of the sequence becomes the next number in the sequence.
#
# The method will take two inputs: the starting sequence with X number of
# elements and an integer N, and return the first N elements in the given
# sequence.  Take a look at the test cases for examples.
#
# In the code, how_many_numbers_to_sum is the same as X (name your variables
# descriptively!).
#
# In the code, number_of_fibonacci_numbers_to_return is the same as N.

def xbonacci(starting_sequence, number_of_fibonacci_numbers_to_return)
  # how_many_numbers_to_sum = starting_sequence.length

  #
  # your code goes here
  #
end

puts "-------Xbonacci-------"
puts xbonacci([1, 1], 5) == [1, 1, 2, 3, 5]
puts xbonacci([1, 1, 1], 6) == [1, 1, 1, 3, 5, 9]
puts xbonacci([1, 1, 1, 1], 8) == [1, 1, 1, 1, 4, 7, 13, 25]
puts xbonacci([1, 1, 1, 1, 1, 1], 10) == [1, 1, 1, 1, 1, 1, 6, 11, 21, 41]
puts xbonacci([0, 0, 0, 0, 1], 10) == [0, 0, 0, 0, 1, 1, 2, 4, 8, 16]


#  Cupcake Solver
#------------------------------------------------------------------------------
# It's Jennifer's birthday today. Jennifer's mom decided to bake different kinds
# of cupcakes for Jennifer's first grade class.  Everybody needs to have an equal
# amount of the different kinds of cupcakes.

# Write a method that takes an array of the counts of the different kinds of
# cupcakes and the number of students in the class, and returns
# the total number of cupcakes that each student in the class
# should get.

# Every student should have equal amounts of every kind of cupcake.
# No student gets to have more cupcakes than the others.  There can be leftover
# cupcakes.

# An array of [1, 2, 3] means that there's one red velvet cupcake,
# two vanilla cupcakes, and three chocolate cupcakes.

# Example: cupcake_solver([10, 10, 10], 5) == 6  means that there are five
# students in the class, and each student gets to eat six cupcakes, total.


def cupcake_solver(cupcake_counts, number_of_students_in_class)
  #
  # your code goes here
  #
end


puts "-------Cupcake Solver-------"
puts cupcake_solver([10, 10, 10], 5) == 6
puts cupcake_solver([25, 27, 30], 5) == 16
puts cupcake_solver([32, 27, 28], 20) == 3
puts cupcake_solver([32, 27, 28, 24], 20) == 4


# ------------------------------------------------------------------------------

# Finished?
# ------------------------------------------------------------------------------
# Make sure everything puts out as 'true' when you run the file.
# Make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
# ------------------------------------------------------------------------------


	pig_latin_sentence.join(" ")
    end

puts "---------pig latin-------"
puts pig_latin("i speak pig latin") == "iay eakspay igpay atinlay"
puts pig_latin("throw me an aardvark") == "owthray emay anay aardvarkay"

#Remove the nth letter of the string

def remove_nth_letter(string, n)
  string.delete!(string[n])
end

puts "---------remove nth letter-------"
puts remove_nth_letter("helloworld", 5) == "helloorld"
puts remove_nth_letter("helloworld", -3) == "hellowold"

# Boolean function: check if short_string is a substring of long_string
def substring?(long_string, short_string)

  long_string.match(short_string) != nil

end

puts "---------substring-------"
puts substring?("thisisaverylongstring", "sisa") == true
puts substring?("thisisaverylongstring", "ting") == false
puts substring?("whatifikeptontypingforever", "ik") == true

# count the number of times that two adjacent numbers in an array add up to n.
# You cannot reuse a number. So count_adjacent_sums([1, 5, 1], 6) => 1


def count_adjacent_sums(array, n)

  idx = 0
  counter = 0
  
  while idx < array.length - 1
  
   if array[idx] + array[idx + 1] == n && array[idx] != array[idx + 2]
   	counter += 1
   end
  
  idx += 1
  end
 counter
end

puts "---------count adjacent sums-------"
puts count_adjacent_sums([7, 2, 4, 6, 8, 10], 7) == 0
puts count_adjacent_sums([6, 7, 11, 2, 5, 10, 3], 13) == 3
puts count_adjacent_sums([1, 9, 1, 8, 2, 10], 10) == 2

# update the older inventory with the newer inventory. Add any new items to the
# hash and replace the values for items that already exist.

def inventory_hash(older, newer)
   older.merge(newer)
end

puts "---------inventory hash-------"
march = {rubies: 10, emeralds: 14, diamonds: 2}
april = {emeralds: 27, moonstones: 5}
puts inventory_hash(march, april) == {rubies: 10, emeralds: 27, diamonds: 2, moonstones: 5}

# Now, alphabetical order matters in your inventory. Insert new inventory items into
# your array in the appropriate place
def inventory_array(older, newer)

  march = Hash.new 0
  april = Hash.new 0

  older.each { |k, v| march[k] = v }
  newer.each { |k, v| april[k] = v }

  results = march.merge(april)
  results.each_pair.to_a.sort
end

puts "---------inventory array-------"
march_array = [['diamonds', 2], ['emeralds', 14], ['rubies', 10]]
april_array = [['emeralds', 27], ['moonstones', 5]]
puts inventory_array(march_array, april_array) == [['diamonds', 2], ['emeralds', 27], ['moonstones', 5], ['rubies', 10]]