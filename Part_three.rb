
puts "is_prime?(num) ANSWER:"
def is_prime?(num)
  (2..Math.sqrt(num)).each { |i| return false if num % i == 0 }
   true
   
end
is_prime?(11)
puts "all_the_primes(number) ANSWER:"
def all_the_primes(number)

	results = (0..number).select { |num| is_prime?(num)}
	p results
	
end
all_the_primes(11)
puts
#----------------------
puts "range_of(array) ANSWER:"
#Write a function called range_of(array) which 
#returns the difference between the smallest and 
#the greatest value of the array.

def range_of(array)
	
	p array.sort.last 
	
end
range_of([1,2,3,8,5,6,7,])
puts 
#----------------------

puts "greatest_uniq(array) ANSWER:"
#Write a function called greatest_uniq(array) 
#which returns the greatest unique (non-duplicated) 
#number in the array.

def greatest_uniq(array)
	
	p array.sort.uniq.last
	
end
greatest_uniq([1,1,1,2,3,5,6,8,8,8,8,1,1,2,2])

puts "greatest_three(array) ANSWER:"
#Write a function called greatest_three(array) 
#which given an unordered array, returns the 
#greatest three values.

def greatest_three(array)
	
	top_three = []
	
	3.times do
	  biggest = array.sort.uniq.last
	  top_three << biggest
	  array.delete_if { |num| num == biggest}
  end
  p top_three
end
#test
greatest_three([1,1,1,2,3,5,6,8,8,8,8,1,1,2,2])
puts
puts "lotrify(string) ANSWER:"
#Write a function called lotrify(string) translates 
#passages from The Hobbit into the Lord of the Rings. 
#It should replace all occurrences of the string "Bilbo" 
#with the string "Frodo"

def lotrify(string)
	
	p string.gsub("Bilbo", "Frodo")

end
#test
lotrify("Bilbo does not like the name Bilbo but whatever")
puts
# -----------------------  
puts "is_palindrome?(string) ANSWER:"
#Write an is_palindrome?(string) function that checks 
#to see if the string reads the same backwards as 
#it does forwards. It should not count spaces or 
#be case sensitive.

def palindrome?(string)
	
	rev_str = string.reverse 
	rev_str == string

end

def is_palindrome?(string)
	
	new_string = string.downcase.split(" ").join
	new_string.reverse == new_string
	
end
is_palindrome?("Sore was I ere I saw Eros")
puts
#-------------------------
puts "longest_palindrome(string) ANSWER:"
#Write a function called longest_palindrome(string) 
#that given a string, finds the longest substring of 
#that string that is a palindrome.

def longest_palindrome(string)
	longest_palindrome = 0
	longest_word = ""
  i = 0
		  
	string.each do |word|
	  if palindrome?(word)
		  while i < string.length
		    if string[i].length > longest_palindrome
			    longest_palindrome = string[i].length
			    longest_word = string[i]
		    end
		    i += 1
	  	end
	  end
  end
  puts longest_word
 end
#test
longest_palindrome(["bob", "racecar", "AMANAPLANACANALPANAMA"])

