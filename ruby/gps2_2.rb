
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# Convert string into separate keys
# Set quantity (value) for each key to 1
# print the list to the console [can you use one of your other methods here?]

def create_list(item_list)
  list_arr = item_list.split(' ')

  grocery_list = {}

  list_arr.each do |item|
    grocery_list[item] = nil
  end 
  grocery_list 
end 

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Add the item to the list of keys in the hash
# output: Print the list with the addition

def add_item_to_list(grocery_list, item)
  grocery_list[item] = nil 
  grocery_list
end

# Method to remove an item from the list
# input: list, item name, and optional quantity
# steps: delete identified item from hash
# output: list without the deleted item

def remove_item_from_list(grocery_list, item) 
  grocery_list.delete(item)  
  grocery_list 
end 

# Method to update the quantity of an item
# input: list, item, quantity
# steps: change quantity (value) of item, convert string to integer
# output: list reflecting the new quantity

def update_quantity(grocery_list, item, quantity)
  grocery_list[item] = quantity.to_i 
  grocery_list
end 

# Method to print a list and make it look pretty
# input: name of the hash
# steps: print value and key
# output: printed list

def print_finished_list(grocery_list)
  puts "----------------------"
  puts "Here is your grocery list: "
  grocery_list.each do |item, quantity|
    puts "Buy #{quantity} #{item}" 
  end
  puts "----------------------"
end 


# USER INTERFACE

puts "What items do you need to buy? Type a list separated by spaces."
list_input = gets.chomp
grocery_list = create_list(list_input)
print_finished_list(grocery_list)

loop do 
  puts "Type another item to add, or type 'done'."
  item = gets.chomp
  break if item == 'done' 
  add_item_to_list(grocery_list, item)
  print_finished_list(grocery_list)
end 

loop do 
  puts "Type the name of an item to update its quantity (or type 'done')."
  item = gets.chomp 
  break if item == 'done' 
  puts "Enter the new quantity: "
  quantity = gets.chomp 
    if quantity == '0'
      remove_item_from_list(grocery_list, item)
    else
    update_quantity(grocery_list, item, quantity)
    end 
  print_finished_list(grocery_list)
end 


print_finished_list(grocery_list)
puts "Whew!" 

=begin 

What did you learn about pseudocode from working on this challenge?
--
Pseudocode is difficult to write with someone else! When I'm analyzing and deconstructing, I tend to get very granular, and others might not so much. It's also very important to set expectations beforehand.


What are the tradeoffs of using arrays and hashes for this challenge?
--
Using an array at first, just to gather the first few items, was helpful for getting the list started. I can see how continuing to use arrays might help the user interface be less confusing / circular - you can just say "add an item and quantity" and return that right back. With a hash, you have to mess with keys and values - though it prints a very nice list in the end. :) 


What does a method return?
--
A method returns the last evaluated expression in the method. That's why each method has 'grocery_list' at the end, to make sure the method is returning the finished list.


What kind of things can you pass into methods as arguments?
--
Any kind of primitive data can be passed into the method as an argument, but you can also pass a data structure like a hash or an array.


How can you pass information between methods?
--
This is the part that I didn't quite get this week. Perhaps we did not approach this challenge in a way that made passing information between methods necessary. However, it seems like establishing global variables to pass information back and forth is necessary. You can also call a method within a method if necessary.


What concepts were solidified in this challenge, and what concepts are still confusing?
--
I definitely feel much more confident building out hashes, adding new items and removing them, etc, and creating loops in the user interface to account for what the user might need to do (change the quantity to zero, for instance, thereby deleting the item from the list). "Passing information between methods" - I'm still not sure if we even did that.

=end 





