# Swap Method---------------------------

def swap(array, i)
  array[i], array[i+1] = array[i+1], array[i]
  true
end

# bubble_sort Method-----------------------

def bubble_sort (array)
  loop do
    swapped = false
    (array.length - 1).times do |i|
      swapped = swap(array, i)  if array[i] > array[i + 1]
    end
    break unless swapped
  end
  array
end

# bubble_sort_by Method----------------------
def bubble_sort_by(array)
  loop do
    swapped = false
    (array.length - 1).times do |i|
      swapped = swap(array, i) if yield(array[i], array[i+1]) > 0
    end
    break if swapped == false
  end
  array
end

# For bubble_sort
puts bubble_sort ([1,6,4,3,6,9])

puts '-------------'

# For bubble_sort_by
puts bubble_sort_by ([1,6,4,3,6,9]) {|left, right| left <=> right}

puts bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length <=> right.length }
