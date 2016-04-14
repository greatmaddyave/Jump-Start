# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

def bubble_sort(arr)

  idx = 0

  until arr.sort == arr

    idx = 0 if idx + 1 == arr.length
    arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
    idx += 1

  end

  arr
end

puts bubble_sort([]) == []
puts bubble_sort([1]) == [1]
puts bubble_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]
