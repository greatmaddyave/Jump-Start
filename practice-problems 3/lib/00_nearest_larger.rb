# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5
def nearest_larger(arr, idx)

  num = arr[idx]
  sorted_arr = arr.sort
  num_idx = sorted_arr.index(num)

  next_largest = sorted_arr[num_idx + 1]

  unless arr[idx] == arr.last
    arr.index(next_largest)
  else
    nil
  end

end
p "*********** nearest_larger ***********"
puts nearest_larger([2,3,4,8], 2) == 3
puts nearest_larger([2,8,4,3], 2) == 1
puts nearest_larger([2,6,4,6], 2) == 1
puts nearest_larger([8,2,4,3], 2) == 0
puts nearest_larger([2,4,3,8], 1) == 3
puts nearest_larger([2,6,9,4,8], 3) == 1
puts nearest_larger([2,6,4,8], 3) == nil
