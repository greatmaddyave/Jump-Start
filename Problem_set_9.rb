# ------------------------------------------------------------------------------
# Instructions
# ------------------------------------------------------------------------------
# This file is in the same format as your assessments.
#
# Make sure everything puts out as 'true' when you run the file.
#
# Give yourself an hour to complete this assessment.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
#
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  If you forget a particular ruby method, write it yourself.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Look at the test cases below the problem before you approach it.
# Use the debugger when code doesn't run how you expect.
# ------------------------------------------------------------------------------

# Price is Right
# ------------------------------------------------------------------------------
# Given a list of bids and an actual retail price, return the bid that is closest
# to the actual retail price without going over that price.
#
# Assume there is always at least one bid below the retail price.


def price_is_right(bids, actual_retail_price)
    
   arr = bids.delete_if { |number| number > actual_retail_price}
   difference = bids.map { |number| (number - actual_retail_price).abs}
   arr[difference.index(difference.min)]

end

puts "-------Price is Right-------"
puts price_is_right([200, 2350, 1400, 1600], 1599) == 1400
puts price_is_right([950, 850, 1000, 1], 1300) == 1000


# Total Product Sequence
# ------------------------------------------------------------------------------
# The total product sequence starts with [1, 2, 3] as a "base case" (what you
# start with).  The next number in the sequence is the product of all the numbers
# before it.  Given a number n, find the nth number of the total product sequence.
#
# Assume n must be at least 1

# Total Product Sequence
# ------------------------------------------------------------------------------
# The total product sequence starts with [1, 2, 3] as a "base case" (what you
# start with).  The next number in the sequence is the product of all the numbers
# before it.  Given a number n, find the nth number of the total product sequence.
#
# Assume n must be at least 1
def total_product_sequence(n)
	
  results = 1
  array = []

  if n < 4
	  results = n
	else 
		array = [1,2,3,6]
		until array.length == n
	  	 array << (array.last * array.last)
	  end
	  array.delete(array[-1])
  end
  array.map { |number| results *= number }
  results
end
  

puts "-------Total Product Sequence-------"
puts total_product_sequence(1) == 1
puts total_product_sequence(2) == 2
puts total_product_sequence(3) == 3
puts total_product_sequence(4) == 6 # 3 * 2 * 1
puts total_product_sequence(5) == 36 # 6 * 3 * 2 * 1
puts total_product_sequence(6) == 1296 # 36 * 6 * 3 * 2 * 1
puts total_product_sequence(8) == 2821109907456 # etc...


puts "-------Total Product Sequence-------"
puts total_product_sequence(1) == 1
puts total_product_sequence(2) == 2
puts total_product_sequence(3) == 3
puts total_product_sequence(4) == 6 # 3 * 2 * 1
puts total_product_sequence(5) == 36 # 6 * 3 * 2 * 1
puts total_product_sequence(6) == 1296 # 36 * 6 * 3 * 2 * 1
puts total_product_sequence(8) == 2821109907456 # etc...

# Products Except Me
# ------------------------------------------------------------------------------
#
# Given an array of numbers, calculate all the different products that remain when
# you take each element out of the array.
#
# Examples:
#
# [2, 3, 4] => [12, 8, 6], where:
#   12 because you take out 2, leaving 3 * 4
#   8, because you take out 3, leaving 2 * 4
#   6, because you take out 4, leaving 2 * 3
# ]
#
# [1, 2, 3, 5] => [30, 15, 10, 6], where:
#   30 because you take out 1, leaving 2 * 3 * 5
#   15, because you take out 2, leaving 1 * 3 * 5
#   10, because you take out 3, leaving 1 * 2 * 5
#   6, because you take out 5, leaving 1 * 2 * 3
# ]
#
#
#

def products_except_me(numbers)
  
  numbers.permutation(numbers.length - 1).to_a.sort.map {|arr| arr.inject(:*)}.uniq.sort.reverse
  
 end

puts "-------Products Except Me-------"
puts products_except_me([2, 3, 4]) == [12, 8, 6]
puts products_except_me([1, 2, 3, 5]) == [30, 15, 10, 6]
puts products_except_me([7, 2, 1, 4]) == [8, 28, 56, 14]


# Fall and Winter Birthdays
# ------------------------------------------------------------------------------
# Given a list of students and what month their birthday is, return all the pairs
# of students whose birthdays both fall in the second half of the year.  Months
# are numbers, and assume that July (month 7) and later is the second half of
# the year.
#
# Only count pairs once, and work from the beginning of the list to the end.
#
def first_half?(number)
	
end


def fall_and_winter_birthdays(students_with_birthdays)
	
  names = []
  
  students_with_birthdays.select { |name, month| names << name if month > 6 }; names.combination(2).to_a
  
end

students_with_birthdays_1 = [
  ["Asher", 6],
  ["Bertie", 11],
  ["Dottie", 8],
  ["Warren", 9]
]

second_half_birthday_pairs_1 = [
  ["Bertie", "Dottie"],
  ["Bertie", "Warren"],
  ["Dottie", "Warren"]
]

students_with_birthdays_2 = [
  ["Asher", 6],
  ["Bertie", 11],
  ["Dottie", 8],
  ["Warren", 9],
  ["Charlie", 7],
  ["Nassim", 4],
  ["Ajit", 10],
]

second_half_birthday_pairs_2 = [
  ["Bertie", "Dottie"],
  ["Bertie", "Warren"],
  ["Bertie", "Charlie"],
  ["Bertie", "Ajit"],
  ["Dottie", "Warren"],
  ["Dottie", "Charlie"],
  ["Dottie", "Ajit"],
  ["Warren", "Charlie"],
  ["Warren", "Ajit"],
  ["Charlie", "Ajit"],
]

puts "-------Fall and Winter Birthdays-------"
puts fall_and_winter_birthdays(students_with_birthdays_1) == second_half_birthday_pairs_1
puts fall_and_winter_birthdays(students_with_birthdays_2) == second_half_birthday_pairs_2


# More than N Factors
# ------------------------------------------------------------------------------
# Given an array of numbers, return all the numbers that have at least N
# factors (including 1 and itself as factors).

# For example, if you were given [1, 3, 10, 16] and wanted to find the numbers
# that had at least five factors, you would return [16] because 16 has five
# factors (1, 2, 4, 8, 16) and the others have fewer than five factors.
def number_of_factors?(number)
	 
	 num = 1
	 arr = []
	 
	 until num > number
	   if number % num == 0
	   	arr << num
	   end
	 num += 1 
	end
	 arr.length
end
    
def more_than_n_factors(numbers, n)

	numbers.select { |num| number_of_factors?(num) >= n }

end

puts "-------More Than N Factors-------"
puts more_than_n_factors([1, 3, 10, 16], 5) == [16]
puts more_than_n_factors([1, 3, 10, 16], 2) == [3, 10, 16]
puts more_than_n_factors([20, 36, 39, 16], 6) == [20, 36]


# One-week Wonders
# ------------------------------------------------------------------------------
# Given a list of songs at the top of the charts, return the songs that only
# stayed on the chart for a week at a time.
#
# Songs CAN reappear on the chart, as long as it's for a week at a time. Only
# count those songs once.
#
# Suggested strategy: find the songs that show up multiple times in a row and
# subtract them out.

def one_week_wonders(songs)
	
 songs += songs
 all_songs = []
 longer_than_week = []
 songs.each_slice(2) {|song| all_songs << song}
 
 all_songs.select {|two_songs| longer_than_week << two_songs[0] if two_songs.uniq.length == 1 }
 
 songs.each do |song|
 	
 	if longer_than_week.include?(song)
 		songs.delete(song)
 	end
 	
 end 	
 	songs.uniq
end

top_hits_1 = ["Call Me Maybe", "Protect Ya Neck", "Call Me Maybe", "Protect Ya Neck", "Protect Ya Neck"]
one_week_wonders_1 = ["Call Me Maybe"]

top_hits_2 = ["Beat It", "Beat It", "Careless Whisper", "Beat It", "Baby", "Baby", "Never Gonna Give You Up", "Uptown Funk", "Uptown Funk", "Uptown Funk"]
one_week_wonders_2 = ["Careless Whisper", "Never Gonna Give You Up"]

puts "-------One Week Wonders-------"
puts one_week_wonders(top_hits_1) == one_week_wonders_1
puts one_week_wonders(top_hits_2) == one_week_wonders_2

# Sign Tweakers
# ------------------------------------------------------------------------------
# Given a perfectly respectable business sign, determine if pranksters George
# and Harold can make a vandalized sign out of it using the same or fewer letters.
# Ignore capitalization and punctuation.

def can_tweak_sign?(normal_sign, vandalized_sign)

  norm_split = normal_sign.downcase.split("")
  van_split = vandalized_sign.downcase.split("")
  
  alpha_normal = Hash.new 0
  alpha_vandalized = Hash.new 0
  

  norm_split.each { |letter| alpha_normal[letter] += 1}
  van_split.each { |letter| alpha_vandalized[letter] += 1}
  
  arr = []
  alpha = []
  ("a".."z").each { |letter| alpha << letter }

   alpha.map do |letter|
   			if alpha_normal[letter] - alpha_vandalized[letter] < 0
   				arr << letter
   			end
   	end		
   			arr.empty? ? true : false
end

puts "-------Sign Tweakers-------"
puts can_tweak_sign?("Come in and see our pretty armchairs", "Come and see our hairy armpits") == true
puts can_tweak_sign?("Student and teacher art fair starts Wed.", "Teacher farts stain underwear") == true
puts can_tweak_sign?("Choose the bread of life or you are toast", "Teacher farts stain underwear") == false


# Repeated Number Ranges
# ------------------------------------------------------------------------------
# Given a list of numbers, give the start and end indices each time a number shows
# up multiple times in a row.
#

def repeated_number_ranges(numbers)
	
	i = 0
	results = []
	
	while i < numbers.length
	
	  if numbers[i] == numbers[i + 1] && numbers[i + 1] != numbers[i + 2]
	  	start_idx = numbers.index(numbers[i])
	  	end_idx = numbers.count(numbers[i]) - start_idx - 1
	  	
	  	  if end_idx <= 0 
	  	    end_idx = end_idx.abs + 2
	  	  end
	  	  
	  	results << [start_idx, end_idx]
	  end
	  
	i += 1
  end
	results
	
end

puts "-------Repeated Number Ranges-------"
puts repeated_number_ranges([1, 1, 2]) == [[0, 1]]
puts repeated_number_ranges([1, 2, 3, 3, 4]) == [[2, 3]]
puts repeated_number_ranges([1, 2, 3, 3, 4, 4]) == [[2, 3], [4, 5]]
puts repeated_number_ranges([1, 1, 1, 2, 3, 3, 4]) == [[0, 2], [4, 5]]
puts repeated_number_ranges([8, 7, 7, 14, 12, 12, 12, 12, 21]) == [[1, 2], [4, 7]]