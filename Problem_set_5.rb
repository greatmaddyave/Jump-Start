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
	sp_sent.each { |word| pig_latin_sentence << latinize(word)}
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