def bubble_sort (array)
  loop do
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true     
      end
    end
    break unless swapped
  end
  array
end

def swap(array, i)
  array[i], array[i+1] = array[i+1], array[i]
  true
end


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

# puts bubble_sort ([1,6,4,3,6,9])

puts bubble_sort_by ([1,6,4,3,6,9]) {|left, right| left <=> right}


