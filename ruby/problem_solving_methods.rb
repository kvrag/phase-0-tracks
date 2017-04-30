# Write a method that takes an array of integers and an integer to search for.
# Return the index of the item, or nil if not present.

#release 0
sample_array = [
  23,
  -13,
  56,
  90,
  2,
  9,
  37,
  117 
]



def search_party(input_array, input)
index = 0

  while index < input_array.length
    if input_array[index] == input
      return index
      #added return so that the index value would be printed when the method is run
    end
    index += 1
  end
end

p search_party(sample_array, 117)

#release 1

#create iterative sequence to add together 2 previous index points 
# find method to move forward one index point with each loop
# for each new number in array, add previous number to it
#store the result as the next item in the array

#define method

def fib_sequence(n)

  fibonacci_array = [0, 1]
  
  while n > fibonacci_array.length do 
    fibonacci_array << fibonacci_array[-1] + fibonacci_array[-2]
    #when calling fibonacci method inside this method, it was breaking with larger numbers
    #rather than creating each number and having to run through the entire array each time to create a number
    #this way we only have to call the last two numbers and add them until we reach the desired length of array

  end

  return fibonacci_array
  #same as the search party method, i needed to return the array so that when i run the fib_sequence method i get an explicit return. 
  #just putting the new number into the array doesn't require an explicit return

end


p fib_sequence(100)

#release 2

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
    final_index = 0
    while final_index < final_array.length
      if value <= final_array[final_index] 
        final_array.insert(final_index, value)
        break
      elsif final_index == final_array.length-1
        final_array.insert(final_index+1, value)
        break
      end
      final_index += 1
      # puts "The loop is working!"
    end 
  end
  final_array
end

example = [90, 56, 71, 25, 19, 0, 2, 68]
puts insertion_sort(example) 






