

# Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm, and returns a sorted version of the array. ** Not Ruby-specific.

# INSERTION SORT

# Start with an unsorted array.
# Create an empty 'final array' in which to feed the sorted values.
# Insert the first value into the final array.
# Insert the second value into the final array at the point where it is greater than all the values before it.
# Repeat for each value in the unsorted array.
# Return the final array. All values should be in numeric order.
# If the unsorted array were: [90, 56, 71, 25, 19, 0, 2, 68]
# Then the final array would be: [0, 2, 19, 25, 56, 68, 71, 90]



def insertion_sort(input_array)
  final_array = [input_array[0]] # puts the first value in input_array into final_array so we have something to compare the rest of the values to
  input_array.delete_at(0)  # deletes input_array[0] from input_array (so it's cutting and pasting instead of copy and pasting)

  for value in input_array
    index = 0
    while index < final_array.length
      if value <= final_array[index] 
        final_array.insert(index, value)
        #break
      elsif index == final_array.length-1
        final_array.insert(index+1, value)
        #break
      end
      index += 1
    end
    return final_array 
  end
end



example = [90, 56, 71, 25, 19, 0, 2, 68]

puts insertion_sort(example) 

# def insertion_sort(unsorted_array)
# sorted_array = []

#   unsorted_array.each do |value|

#     sorted_array << value
#     sorted_array.sort! 
#   end
#   return sorted_array 
# end

# p insertion_sort(example)