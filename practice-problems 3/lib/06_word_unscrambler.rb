# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.
#
# Difficulty: 3/5

def word_unscrambler(str, words)
splt_str = str.split("")
combo = splt_str.permutation(str.length).to_a

comparison = []
results = []

combo.each { |arr| comparison << arr.join("") }
words.each { |words| results << words if comparison.include?(words) }
results

end

puts word_unscrambler("cat", ["tac"]) == ["tac"]
puts word_unscrambler("cat", ["tic", "toc", "tac", "toe"]) == ["tac"]
puts word_unscrambler("cat", ["scatter", "tac", "ca"]) == ["tac"]
puts word_unscrambler("turn", ["numb", "turn", "runt", "nurt"]) == ["turn", "runt", "nurt"]
