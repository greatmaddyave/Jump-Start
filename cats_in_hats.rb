### Cats 'n Hats ###
# You have 100 cats (You are quite lucky to own so many cats!).

# You have arranged all your cats in a line. Initially, none of your cats
# have any hats. You take 100 rounds walking around the cats, always starting
# at the beginning. Every time you stop at a cat, you put a hat on it if it
# doesn't have one, and you take its hat off if it has one on.

# The first round, you stop at every cat. The second round, you only stop at
# every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at
# every 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the
# 100th round (i.e. you only visit the 100th cat).

# Write a program that prints which cats have hats at the end.

idx = 2
cats = []

  100.times do
    cats << 1
  end

cats.each_with_index do |cat, cat_index|
 	if cat_index % idx == 0
 		if cat == 1
 			cats[cat_index] = 2
 		else cat == 2
 			cats[cat_index] = 1
 		end
 	end
 end 

while idx < cats.length
 cats.each_with_index do |cat, cat_index|
 	if cat_index % idx == 0
 		if cat == 1
 			cats[cat_index] = 2
 		else cat == 2
 			cats[cat_index] = 1
 		end
 	end
 end
 	idx += 1
end
cats.count(2)
