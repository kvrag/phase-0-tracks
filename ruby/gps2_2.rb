
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

