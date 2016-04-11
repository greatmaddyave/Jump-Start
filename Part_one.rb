puts "hello_world Answer:"
#Write a function called hello_world that will puts 
#the string "Hello world!" to the screen.
def hello_world
	puts "Hello World!"
end
puts hello_world
#--------------------
puts "print_thrice(number)"
#Write a function called print_thrice(number) that, given 
#a number, will print the number three times.

def print_thrice(number)
	
	i = 0
	while i < 3
	  p number
	  i += 1
  end
end
#Test
print_thrice(3)
puts
#-----------------------------
puts "print_thrice_thrice(number) ANSWER:"
#Write a function called print_thrice_thrice(number) that, 
#given a number, will call print_thrice with that number 
#three times (for 9 total prints).

def print_thrice_thrice(number)
	i = 0
	
	while i < 3
	 print print_thrice(number)
	 i += 1
	end
end
#test
print_thrice_thrice(3)
puts
#-----------------------------
puts "times_three_and_plus_five(number) ANSWER:"
#Write a function called times_three_and_plus_five(number)
#that takes a number, multiplies it by 3, and then adds 5.
#For example, times_three_and_plus_five(4) should output 17.

def times_three_and_plus_five(number)
	
  total = (number * 3) + 5
  puts total
  
end
#test 
times_three_and_plus_five(7)
puts 
#----------------------------

puts "even_or_odd(number) ANSWER:"
#Write a function called even_or_odd(number) that prints 
#"even" if the number is even, and prints "odd" if the 
#number is odd.

def even_or_odd(number)
	
	if number.even?
		puts "EVEN"
	else
		puts "ODD"
	end
end
#Test
even_or_odd(3)
#----------------------------
puts "division_plus_remainder(big_number, small_number) ANSWER:"
#Write a function called division_plus_remainder(big_number, 
#small_number) that finds the number of times small_number 
#completely divides into big_number, and then adds the 
#remainder that's left over. For example, 
#divisor_plus_remainder(7, 2) should equal 4.

def division_plus_remainder(big_number, small_number)
	
	counter = 0 
	number = big_number
	
	while number > small_number 
	 number -= small_number
	 counter += 1
	end
	 puts counter + number
end
#Test
division_plus_remainder(7,2)
puts
#--------------------------
puts "is_factor_of(big_number, small_number) ANSWER"
#Write a function called is_factor_of(big_number, small_number) 
#that returns true if small_number is a factor of big_number, 
#and false if it is not.

def is_factor_of(big_number, small_number)
  big_number % small_number == 0 ? true : false
end
#test
is_factor_of(9, 3)
#--------------------------
puts "While loop ANSWER:"
#Write a while loop that prints out all the numbers 
#from 1 to 25 inclusive.

i = 1

while i < 26
  puts i
  i += 1
end
puts
#-------------------------
puts "print_up_to(number) ANSWER"
#Write a function called print_up_to(number) that given 
#a number, prints out all the numbers from 1 to that number, 
#inclusive. It should use a while loop internally.

def print_up_to(number)
	i = 1
	
	while i < number + 1
  	puts i 
	  i += 1
  end
  
end
#test
print_up_to(10)
#-----------------------
puts "print_factors(number) ANSWER:"
#Write a function called print_factors(number) that prints 
#all of the factors of a number, including 1 and the number 
#itself. Hint: use your is_factor_of(big_number, small_number) function.

def print_factors(number)
	
	prime_numbers = []
	i = 1
	
	while i < number
	  if is_factor_of(number, i) == true
	  	prime_numbers << i
	  end
	  i += 1
	end
	prime_numbers << number
	puts "#{prime_numbers}"
end
#test
print_factors(10)
puts
#------------------------
puts "largest_factor(number) ANSWER:"
#Write a function largest_factor(number) that returns 
#the largest factor of a number. Adapt your print_factors 
#method to use a while loop starting at number - 1, and 
#return immediately once you find a number that's a factor.

def largest_factor(number)
	array = []
	array << print_factors(number)
	largest = array.last
end
#test
largest_factor(100)
puts
#-----------------------
puts "is_prime?(number) ANSWER"
#Write a function is_prime?(number) that returns a boolean 
#depending on whether the number is prime. 
#A reminder: a prime number only has two factors: 1 and itself.

def is_prime?(number)
	
	i = 1
	numbers = []

	while i < number + 1
	  if number % i == 0 
		  numbers << i
	  end
	  i += 1
	end
	  numbers.length == 2 ? true : false
end
#test
is_prime?(3)
#--------------------
puts "less than 20 and not divisible by 6"
#Write an until loop that prints out all of the numbers 
#that are less than 20 and are not divisible by 6.
	array = []
	i = 1
	
  until i == 20
    if i % 6 == 0 
    	array << i 
    end
  i += 1
  end
  puts array
#--------------------
puts "shout_then_whisper(string1, string2) ANSWER:"
#Write a function shout_then_whisper(string1, string2) 
#that takes in two strings, and shouts the first part, 
#then whispers the second part. The output should look like this:
#shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"

def shout_then_whisper(string1, string2)
	string_one = string1.upcase
	string_two = string2.downcase
	puts "#{string_one}!! ... #{string_two}"
end
#test
shout_then_whisper("Hello", "McDouglas") 
puts
#--------------------
puts "first_n_evens(n) ANSWER:"
#Write a function first_n_evens(n) that returns an 
#array of the first N many even numbers, starting from 0.d

def first_n_evens(n)
  i = 0
  even_nums = []
  
  while i < n + 1
  
    if i % 2 == 0
   	 even_nums << i
    end
    
   i += 1
 end
 puts even_nums
end
#test
first_n_evens(4)
puts
#-------------------
puts "reverse(array) ANSWER:"
#Write a function reverse(array) that reverses an array
#in-place.

def reverse(array)
  array.reverse!
  puts array
end
#test
reverse("test")
reverse([1,2,3,4])
puts
#------------------
puts "rotate(array, shift)"
#Write a function rotate(array, shift) that given an array, 
#rotates it in-place by the shift amount. E.g., 
#rotate([1, 2, 3, 4, 5], 2) should produce [4, 5, 1, 2, 3]. 
#rotate([5, 6, 7], -1) should produce [6, 7, 5].
#Hint: a combination of #shift, #unshift, #pop and #push should come in handy here.

def rotate(array, shift)
  beg_arr = []
  i = 0
  
  if shift > 0
  	
  	until i > shift
  	  beg_arr << array[i]
  	  i += 1
  	end
  	 array + beg_arr
  else
  	
  	 i = shift + 1
  	  beg_arr << array[i]
      
      
  end
end
rotate([5, 6, 7], -1)
puts
#--------------------------
puts "all_uniqs(array1, array2) ANSWER"
#Write a function all_uniqs(array1, array2) that given two 
#arrays, produces a new array of only elements unique to array1 
#and elements unique to array2. E.g., 
#all_uniqs([2, 5, 7], [1, 2, 7]) should return [1, 5]

def all_uniqs(array1, array2)
	
	i  = 0
	unique1 = []
	unique2 = []
	
 while i < array2.length
 
	 unless array1.include? (array2[i])
		 unique2 << array2[i]
	 end
	 
	 unless array2.include? (array1[i])
	   unique1 << array1[i]
	 end
	  i += 1
 end
	unique1 << unique2
	puts unique1.reverse
end

all_uniqs([2, 5, 7], [1, 2, 7])

