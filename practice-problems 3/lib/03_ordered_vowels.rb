# Write a method, `ordered_vowel_words(str)` that takes a string of
# lowercase words and returns a string with just the words containing
# all their vowels (excluding "y") in alphabetical order. Vowels may
# be repeated (`"afoot"` is an ordered vowel word).
#
# You will probably want a helper method, `ordered_vowel_word?(word)`
# which returns true/false if a word's vowels are ordered.
#
# Difficulty: 2/5

def ordered_vowel_words(str)

vowels = ["a","e","i","o","u","y"]
splitted_str = str.split("")
arr = []
results = []

splitted_str.each { |letter| arr << letter if vowels.include?(letter)}
just_vowels = arr.uniq.join("")
arr_of_vowels = vowels.combination(just_vowels.length).to_a

  arr_of_vowels.each { |arr| results = str if arr.join("") == just_vowels }
  results = "" if results.empty?
  results
end

puts ordered_vowel_words("amends") == "amends"
puts ordered_vowel_words("complicated") == ""
puts ordered_vowel_words("afoot") == "afoot"
puts ordered_vowel_words("ham") == "ham"
puts ordered_vowel_words("crypt") == "crypt"
