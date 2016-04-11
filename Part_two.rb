puts "Correct Syntax ANSWER:"
#The below is valid and correct Ruby. However, the style sucks.
#Take five minutes and see how many style problems you can
#fix (including variable naming).

def hello_world
	
  puts "Hello, world!" 
  
end

def is_prime num
	
  n = 2
  
  while n < num
  
    if (num % n == 0)
      return (false)
    end
    
      n = n + 1
      
    end
    
    return true
    
  end
  puts 
#------------------------------
puts "BAD CODE ANSWERS:"
#For each error above, write code that raises that error. 
#Yes, we want you to write bad code for once :).
#If you're having trouble, google the error and look 
#for a stackoverflow question. Type out the relevant 
#parts of the code.

# unexpected keyword_end, expecting end-of-input
#/for i in 1..10
 #puts i 
#end
#end

# NameError: undefined local variable or method `n' for main:Object
#puts n * n

# NoMethodError: undefined method `+' for nil:NilClass
#n = "hello"
 #puts n + 5
 
# NoMethodError: undefined method `reverse' for 45:Fixnum
 #45.reverse
 
# NoMethodError: undefined method `capitalize' for nil:NilClass
#45.capitalize
puts "Remove Hashes to read errors"
puts
#-------------------------
puts "100 elements ANSWER:"
#initialize an array of 100 elements with a default value
#of "yes", and then set every other value to "no".

def changing_evens(amount, default)
	
  array = Array.new(amount, default)
  i = 0 
  
  while i < array.length
  
    if i % 2 == 0
    	array[i] = "no"
    end
    
    i += 1
  end
  p array
end
#test
changing_evens(100, "yes")
puts

puts "Subarray of 10 ANSWER:"
#Now take that array and puts the subarray of only the first 
#10 elements (don't over-index!)

new_array = changing_evens(20, "yes")
new_array.pop(10)
p new_array
puts
#---------------------------------
puts "Subarray of last 10 ANSWER:"
#Then puts the last 10 elements.
new_array = changing_evens(20, "yes")
new_array.pop(10)
p new_array
puts
#-----------------------------------
puts "Puts numbers between 30 and 50 ANSWER:"
# puts an array of all of the numbers between 30 and 50, 
#inclusive.

 array = []
   (30..50).each do |i|
   	array << i
   end
puts "#{array}"
puts
#-----------------------------------
puts "letters_before(character) ANSWER:"
#Write a function called letters_before(character) 
#that given a character in the alphabet, returns 
#all of the characters that go before it in the alphabet.

def letters_before(character)
	
	 alphabet_storage = []
   results = []
   
   ("a".."z").each do |i|
   	 alphabet_storage << i
   end
   
   starting_position = alphabet_storage.index(character) 
   i = 0
   
   until i == starting_position
     results << alphabet_storage[i]
     i += 1
   end
   
    puts "#{results}"
end
#test
 letters_before("q")
 puts
 #----------------------------
puts "to_range(array) ANSWER:"
#Write a function called to_range(array) that given 
#an ordered array of every value from start_number 
#to end_number, returns the corresponding range.
#For example, the to_range([4, 5, 6, 7] should return 
#(4..7) as a range.

def to_range(array)
	
	puts "[#{array[0]}, #{array[-1]}]"
end
#test
 to_range([4, 5, 6, 7])
puts
#---------------------------
puts "One Liner ANSWER:"
#Write a one-line function that checks if all the 
#numbers in an array are greater than 3.

 array = [4,5,6,7]
 array.all? { |num| num > 3 } 
 puts "true" if true
 puts
 # -------------------------
 puts "Print 1 to 30"
 #Print every number from 1 to 30 using each and a range.
 
 range = []
 
 (1..30).each { |i| range << i } 
 puts "#{range}"
 puts
 # -------------------------
 
 puts "triplify(array)"
 #Write a function called triplify(array) which 
 #given an array of integers, returns a new array 
 #with all of the values multiplied by three.
 
 def triplify(array)
 	 
 	 new_array = array.map { |i| i * 3 }
 	 p new_array
 end
#test
 triplify([1,2,3])
puts
#----------------------------
puts "zeroes?(array)"
#Write a boolean function called zeroes?(array) 
#that checks whether an array of integers contains 
#at least one 0. First implement this with #each, 
#then use a more advanced enumerable boolean method.

def zeroes?(array)
	
	array.include?(0)
	
	array.each do |i|
		if i == 0
			return (true)
		end
	end
	puts "both return true"
end
#test
zeroes?([1,2,3,5,0])
#----------------------------
puts "all_odd?(array)"
#Write a function called all_odd?(array) that 
#returns whether all of the integers in an array are odd.

def all_odd?(array)
	
	if array.all? {|i| i % 2 != 0} 
	  puts "true"
  else
  	puts "false"
  end
end
#test
all_odd?([1,3,5,9])
all_odd?([2,2,3,5])
puts
#------------------------------
puts "squares(array) ANSWER:"
#Write a function called squares(array) that, 
#given an array of integers, returns a new array 
#of each number squared.

def squares(array)
	
	new_array = array.map { |num| num * num}
	p new_array
end
#test
squares([1,2,3,4])
#----------------------------
puts "word_length(string) ANSWER:"
#Write a function called word_lengths(string) that given
#a sentence, returns a hash of each of the words and 
#their lengths.
#E.g., word_lengths("hello my good good pal") should return { 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }

def word_length(string)
	
	word_and_lengths = Hash.new
	
	string.each do |i|
		word_and_lengths[i] = i.length
	end
	
	puts "#{word_and_lengths}"
	
end
#test
 word_length(["hello", "my", "good", "pal"])
puts
#----------------------------
puts "uniq(array) ANSWER:"
#Write a function called uniq(array) that returns 
#only the unique values in an array. (Hint: use a hash!)

def uniq(array)
	
	count = Hash.new 0

  array.each do |num|
    count[num] += 1
  end
  
  uniqueness = count.select { |k,v| v == 1 }
  uniqueness.select { |k,v| puts k }
  
end  
uniq([1,2,3,4,4,5,1,6,6,44])
puts
#------------------------------
puts "greates_val_key(hash) ANSWER:"
#Write a function called greatest_val_key(hash) that 
#takes in a hash with any keys but only integers for values, 
#and returns the key with the largest value.

def greatest_val_key(hash)
  
	words_and_values = Hash.new 0  
	
	hash.each do |word|
		words_and_values[word] = word.length
	end

	new_hash = words_and_values.sort_by { |key, value| value }.reverse
	puts Hash[*new_hash.first]

end
#test
greatest_val_key(["hello", "you", "are", "coding", "in", "ruby"])
puts
#------------------------------
puts "most_common_number(array) ANSWER:"
#Write a function called most_common_number(array) 
#that takes an array, and returns the number that 
#appears the most times. If there's a tie, just return 
#one of the tied people.

def most_common_number(array)
  #var
  numbers_and_count = Hash.new 0
  
  array.each do |num|
  	numbers_and_count[num] += 1
  end
  #var
  most = numbers_and_count.sort_by { |key, value| value }.reverse
  
  top = Hash[*most.first]
  top.select { |k,v| p k }

end
#test
  most_common_number([1,2,3,4,4,3,2,11,3,5,5,6,6,6,7])