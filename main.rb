# def bubble_sort(arr)
#   loop do
#     swapped = false
#     (arr.length - 1).times do |i|
#       if arr[i] > arr[i + 1]
#         arr[i], arr[i + 1] = arr[i + 1], arr[i] 
#         swapped = true
#       end
#     end
#     break unless swapped
#   end
#   arr
# end



#               0,2

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

puts bubble_sort ([1,6,4,3,6,9])

