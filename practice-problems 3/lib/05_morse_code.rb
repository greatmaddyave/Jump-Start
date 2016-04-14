# Build a function, `morse_encode(str)` that takes in a string (no
# numbers or punctuation) and outputs the morse code for it. See
# http://en.wikipedia.org/wiki/Morse_code. Put two spaces between
# words and one space between letters.
#
# You'll have to type in morse code: I'd use a hash to map letters to
# codes. Don't worry about numbers.
#
# I wrote a helper method `morse_encode_word(word)` that handled a
# single word.
#
# Difficulty: 2/5

def morese_code_word(word)

morese = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => "-.-",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
}

splt_word = word.split("")
results = []

splt_word.map { |letter| results << morese.values_at(letter) }

results.join(" ")
end

def morse_encode(str)
results = []
splitted_str = str.split(" ")

splitted_str.each do |word|
  results << morese_code_word(word)
end

  results.join("  ")
end
puts morse_encode("q") == "--.-"
puts morse_encode("cat") == "-.-. .- -"
puts morse_encode("cat in hat") == "-.-. .- -  .. -.  .... .- -"
