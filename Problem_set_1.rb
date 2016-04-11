puts "                        problem set 1".upcase  
puts "===================================================="
puts "PROBLEM 1:"
# Write a function that given an array, returns another array with each of the numbers multiplied by two. Don't change the original array, make sure you construct a copy!
def array_times_two(array)
	
	new_array = array.collect {|x| x * 2}
	
end

# Tests — these should all spit out true!
puts "\nArray times two:\n" + "*" * 15 + "\n"
puts array_times_two([1, 2, 3]) == [2, 4, 6]
puts array_times_two([0, -1, -2]) == [0, -2, -4]
dont_change_this = [3, 4, 5]
array_times_two(dont_change_this)
puts dont_change_this == [3, 4, 5]
puts
puts
# *********************************************
puts "PROBLEM 2:"
# Write a function that given an array, now CHANGES each of the numbers to be twice as big. This should mutate the original array!
def array_times_two!(array)
	
	array.collect! { |x| x * 2 }
	
end


puts "\nArray times two!:\n" + "*" * 15 + "\n"
puts array_times_two!([1, 2, 3]) == [2, 4, 6]
change_this = [6, 7, 8]
array_times_two!(change_this)
puts change_this == [12, 14, 16]
puts
puts
# *********************************************
puts "PROBLEM 3:"
# Write a function that given an array, returns another array of only the unique elements. I.e., return a version without duplicates.
def uniq(array)
	
	array.uniq
	
end

# Tests
puts "\nUniq:\n" + "*" * 15 + "\n"
puts uniq([5, 5, 5, 5]) == [5]
puts uniq([1]) == [1]
puts uniq([1, 2, 1, 3, 3]) == [1, 2, 3]
puts
puts
# *********************************************
puts "PROBLEM 4:"
# A Slippery Number is a number is that has 3 as a factor or has 5 as a factor, but does *not* have both as factors. For example, 6 is a Slippery Number, but 30 is not. Write a function that given an N, returns an array of the first N Slippery numbers.

# You'll want to write a helper function that helps you determine which numbers are Slippery.

def is_slippery?(number)
	
	 if number % 3 == 0 && number % 5 != 0
	 	true
	 elsif number % 5 == 0 && number % 3 != 0
	 	true
	 else
	 	false
	 end
	
end

def slippery_numbers(n)
	
	slippery = []
	i = 0
	until slippery.length == n
	 
	 if is_slippery?(i)
	 	slippery << i
	 end
	 	
	 	i += 1
  end
		return slippery
end

# Tests
puts "\nSlippery numbers:\n" + "*" * 15 + "\n"
puts slippery_numbers(1) == [3]
puts slippery_numbers(2) == [3, 5]
puts slippery_numbers(7) == [3, 5, 6, 9, 10, 12, 18]
puts
puts
# *********************************************
puts "PROBLEM 5:"
# Write a function that finds whether any two elements in the array sum to 0. If it does, return true; else, return false.
def two_sum_to_zero?(array)

	results = []
	
	array.each do |x|
		array.each {|i| results << x + i }
	end
	
		results.include?(0)
end
# Tests
puts "\nTwo sum to zero?:\n" + "*" * 15 + "\n"
puts two_sum_to_zero?([4, 2, 6]) == false
puts two_sum_to_zero?([-2, 5, 12, -3, 2]) == true
puts two_sum_to_zero?([0, 5]) == true
puts
puts
# *********************************************
puts "PROBLEM 6:"
# A magic number is a number whose digits, when added together, sum to 7. For example, the number 34 would be a magic number, because 3 + 4 = 7. Write a function that finds the first N many magic numbers.

# You'll want to write a helper function that checks whether a given number is a magic number.
# Reminder: you can convert an integer to a string using #to_s. You can convert a string back to an integer using #to_i.

def magic_numbers(count)
	
	results = []
	i = 0
	
	until results.length == count
	  if is_magic_number?(i) == 7
	  	results << i
	  end
	  i += 1
	end
	 return results
end

def is_magic_number?(number)
	
	num_split = number.to_s.split("")
	nums = num_split.collect { |num| num.to_i}
	return nums.inject(:+)
end
# Tests
puts "\nMagic numbers:\n" + "*" * 15 + "\n"
puts magic_numbers(1) == [7]
puts magic_numbers(3) == [7, 16, 25]
puts magic_numbers(20) == [7, 16, 25, 34, 43, 52, 61, 70, 106, 115, 124, 133, 142, 151, 160, 205, 214, 223, 232, 241]